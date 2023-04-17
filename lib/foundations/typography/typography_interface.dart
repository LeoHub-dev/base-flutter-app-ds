import '../tokens/tokens.dart';

class DefaultTypographyInterface {
  const DefaultTypographyInterface({
    this.font = DefaultTypography.inter,
    this.h1 = DefaultTypography.h1,
    this.h2 = DefaultTypography.h2,
    this.h3 = DefaultTypography.h3,
    this.h4 = DefaultTypography.h4,
    this.h5 = DefaultTypography.h5,
    this.h6 = DefaultTypography.h5,
    this.body = DefaultTypography.body,
    this.label = DefaultTypography.label,
    this.small = DefaultTypography.small,
    this.xSmall = DefaultTypography.xSmall,
  });

  final String font;
  final double h1;
  final double h2;
  final double h3;
  final double h4;
  final double h5;
  final double h6;
  final double body;
  final double label;
  final double small;
  final double xSmall;
}
