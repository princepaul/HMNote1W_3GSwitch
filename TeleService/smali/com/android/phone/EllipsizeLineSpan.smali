.class public Lcom/android/phone/EllipsizeLineSpan;
.super Landroid/text/style/ReplacementSpan;
.source "EllipsizeLineSpan.java"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# instance fields
.field private ELLIPSIZE_END:Ljava/lang/String;

.field private layoutLeft:I

.field private layoutRight:I

.field private mExtraText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 13
    iput v0, p0, Lcom/android/phone/EllipsizeLineSpan;->layoutLeft:I

    .line 14
    iput v0, p0, Lcom/android/phone/EllipsizeLineSpan;->layoutRight:I

    .line 16
    const-string v0, "\u2026"

    iput-object v0, p0, Lcom/android/phone/EllipsizeLineSpan;->ELLIPSIZE_END:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/EllipsizeLineSpan;->mExtraText:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "extraText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 13
    iput v0, p0, Lcom/android/phone/EllipsizeLineSpan;->layoutLeft:I

    .line 14
    iput v0, p0, Lcom/android/phone/EllipsizeLineSpan;->layoutRight:I

    .line 16
    const-string v0, "\u2026"

    iput-object v0, p0, Lcom/android/phone/EllipsizeLineSpan;->ELLIPSIZE_END:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/EllipsizeLineSpan;->mExtraText:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/EllipsizeLineSpan;->ELLIPSIZE_END:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EllipsizeLineSpan;->ELLIPSIZE_END:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/android/phone/EllipsizeLineSpan;->mExtraText:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static getFormatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "retText":Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 67
    .local v2, "spaceIndex":I
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 68
    .local v0, "hyphenIndex":I
    if-lez v2, :cond_2

    if-lez v0, :cond_2

    .line 69
    if-ge v2, v0, :cond_1

    .line 70
    const-string v3, " "

    const-string v4, "\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :cond_1
    const-string v3, "-"

    const-string v4, "-\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 74
    :cond_2
    if-lez v2, :cond_3

    .line 75
    const-string v3, " "

    const-string v4, "\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_3
    if-lez v0, :cond_0

    .line 77
    const-string v3, "-"

    const-string v4, "-\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSpannableString(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/android/phone/EllipsizeLineSpan;->getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static getSpannableString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "extraText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x21

    .line 87
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 88
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 89
    .local v0, "findIndex":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 90
    new-instance v2, Lcom/android/phone/EllipsizeLineSpan;

    invoke-direct {v2}, Lcom/android/phone/EllipsizeLineSpan;-><init>()V

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 92
    new-instance v2, Lcom/android/phone/EllipsizeLineSpan;

    invoke-direct {v2, p1}, Lcom/android/phone/EllipsizeLineSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 99
    :goto_0
    return-object v1

    .line 95
    :cond_0
    new-instance v2, Lcom/android/phone/EllipsizeLineSpan;

    invoke-direct {v2, p1}, Lcom/android/phone/EllipsizeLineSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/phone/EllipsizeLineSpan;->mExtraText:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "drawText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/EllipsizeLineSpan;->mExtraText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    .line 49
    .local v14, "extraLen":I
    add-int v4, p4, v14

    move-object/from16 v0, p9

    move/from16 v1, p3

    invoke-virtual {v0, v5, v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v15

    .line 51
    .local v15, "textWidth":F
    float-to-double v6, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    int-to-float v4, v4

    add-float v4, v4, p5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/EllipsizeLineSpan;->layoutRight:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    .line 52
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/EllipsizeLineSpan;->layoutLeft:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/phone/EllipsizeLineSpan;->layoutRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/phone/EllipsizeLineSpan;->layoutLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v6, v15

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float p5, v4, v6

    .line 53
    add-int v7, p4, v14

    move/from16 v0, p7

    int-to-float v9, v0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v10, p9

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 62
    :goto_0
    return-void

    .line 55
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/EllipsizeLineSpan;->ELLIPSIZE_END:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 57
    .local v13, "ellipsiswid":F
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/EllipsizeLineSpan;->layoutRight:I

    int-to-float v4, v4

    sub-float v4, v4, p5

    sub-float v11, v4, v13

    const/4 v12, 0x0

    move-object/from16 v6, p9

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Paint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v4

    add-int p4, p3, v4

    .line 59
    move/from16 v0, p7

    int-to-float v11, v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p9

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/EllipsizeLineSpan;->ELLIPSIZE_END:Ljava/lang/String;

    move-object/from16 v0, p9

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    add-float v6, v6, p5

    move/from16 v0, p7

    int-to-float v7, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "lnum"    # I

    .prologue
    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .local v0, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 35
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/phone/EllipsizeLineSpan;->layoutLeft:I

    .line 36
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/android/phone/EllipsizeLineSpan;->layoutRight:I

    .line 37
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/phone/EllipsizeLineSpan;->layoutRight:I

    iget v1, p0, Lcom/android/phone/EllipsizeLineSpan;->layoutLeft:I

    sub-int/2addr v0, v1

    return v0
.end method
