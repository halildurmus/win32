import { visit } from 'unist-util-visit';

/*
  This plugin wraps children of each heading with thumbs up-down feedback widget.
  Example of result after transformation:

  Before:
  <h2>Heading 1</h2>

  <p>Paragraph 1</p>
  <p>Paragraph 2</p>

  <h2>Heading 2</h2>

  <p>Paragraph 3</p>
  <p>Paragraph 4</p>

  After:
  <h2>Heading 1</h2>
  <FeedbackWidget id="heading-1">
    <p>Paragraph 1</p>
    <p>Paragraph 2</p>
  </FeedbackWidget>

  <h2>Heading 2</h2>
  <FeedbackWidget id="heading-2">
    <p>Paragraph 3</p>
    <p>Paragraph 4</p>
  </FeedbackWidget>
*/

export default function feedback() {
  const transformer = async (ast) => {
    transform(ast);
  };

  return transformer;
}

export const transform = (ast) => {
  const headingIndexes: {
    startIndex: number;
    endIndex: number;
    itemCountBetweenHeadings: number;
    data: {
      id: string;
    };
  }[] = [];

  let nodeBefore: NodeHeading | null = null;

  visit(ast, 'heading', (nodeCurrent: NodeHeading) => {
    const { depth } = nodeCurrent;
    if (depth === 1) return;

    if (!nodeBefore) {
      nodeBefore = nodeCurrent;
      return;
    }

    const nodeBeforeIndex = ast.children.indexOf(nodeBefore);
    const nodeCurrentIndex = ast.children.indexOf(nodeCurrent) - 1;

    const itemCountBetweenHeadings = nodeCurrentIndex - nodeBeforeIndex;
    if (itemCountBetweenHeadings < 1) {
      nodeBefore = nodeCurrent;
      return;
    }

    headingIndexes.push({
      startIndex: nodeBeforeIndex,
      endIndex: nodeCurrentIndex,
      itemCountBetweenHeadings,
      data: {
        id: nodeBefore.data.id,
      },
    });

    nodeBefore = nodeCurrent;
  });

  // add thumbs up down feedback widget to the below of each heading
  let totalCountOfAddedNodes = 0;
  let totalCountOfRemovedNodes = 0;
  for (let i = 0; i < headingIndexes.length; i++) {
    const { startIndex, itemCountBetweenHeadings, data } = headingIndexes[i];
    let belowHeadingIndex = startIndex + 1;

    // get nodes between headings
    const nodesBetweenHeadings = ast.children.slice(
      belowHeadingIndex,
      belowHeadingIndex + itemCountBetweenHeadings
    );

    // remove nodes between headings
    ast.children.splice(belowHeadingIndex, itemCountBetweenHeadings);
    totalCountOfRemovedNodes += itemCountBetweenHeadings;

    // create widget with nodes between headings as its children
    ast.children.splice(belowHeadingIndex, 0, {
      type: 'mdxJsxFlowElement',
      name: 'FeedbackWidget',
      attributes: [
        {
          type: 'mdxJsxAttribute',
          name: 'id',
          value: data.id,
        },
      ],
      children: [...nodesBetweenHeadings],
    });
    totalCountOfAddedNodes++;

    const currentHeading = headingIndexes.at(i);
    if (currentHeading) {
      currentHeading.endIndex += 1;
      currentHeading.endIndex -= itemCountBetweenHeadings;
    }

    const nextHeading = headingIndexes.at(i + 1);
    if (nextHeading) {
      nextHeading.startIndex += totalCountOfAddedNodes;
      nextHeading.startIndex -= totalCountOfRemovedNodes;
      nextHeading.endIndex += totalCountOfAddedNodes;
      nextHeading.endIndex -= totalCountOfRemovedNodes;
    }
  }

  // add last thumbs up/down widget to the end of the ast because we didn't add
  // it in the loop above because there is no next heading
  if (nodeBefore && nodeBefore?.data?.id) {
    const nodeBeforeIndex = ast.children.indexOf(nodeBefore);
    ast.children.push({
      type: 'mdxJsxFlowElement',
      name: 'FeedbackWidget',
      attributes: [
        {
          type: 'mdxJsxAttribute',
          name: 'id',
          value: nodeBefore.data.id,
        },
      ],
    });
  }
};

type NodeHeading = {
  type: 'heading';
  depth: 1 | 2 | 3 | 4 | 5 | 6;
  children: any[];
  position: {
    start: {
      line: number;
      column: number;
      offset: number;
    };
    end: {
      line: number;
      column: number;
      offset: number;
    };
    indent: number[];
  };
  data: {
    id: string;
    hProperties: Record<string, any>;
  };
};
