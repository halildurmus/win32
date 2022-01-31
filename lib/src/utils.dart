// Scale helper to convert logical scaler values to physical using passed in
// scale factor
int scale(int source, double scaleFactor) => (source * scaleFactor).floor();
