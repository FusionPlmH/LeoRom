.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
    }
.end annotation


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWS:C = '\u200b'

.field private static final CHN_LineBreak:I = 0x3

.field private static final COLUMNS_ELLIPSIZE:I = 0x7

.field private static final COLUMNS_NORMAL:I = 0x5

.field private static final DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x6

.field private static final ELLIPSIS_START:I = 0x5

.field private static final EXTRA:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x4

.field private static final HYPHEN_MASK:I = 0xff

.field private static final JPN_LineBreak:I = 0x2

.field private static final KOR_LineBreak:I = 0x1

.field private static final MYM_LineBreak:I = 0x4

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mCJKLineBreak:I

.field private mColumns:I

.field private mEllipsized:Z

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLeftPaddings:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaxLineHeight:I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mRightPaddings:[I

.field private mTopPadding:I


# direct methods
.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 10

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :goto_1
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$700(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v8

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    iput-object v1, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v1, 0x7

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    :goto_2
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1200(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1300(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1400(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1500(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftPaddings:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1600(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightPaddings:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    if-nez v10, :cond_0

    nop

    move-object v1, v9

    goto :goto_1

    :cond_0
    instance-of v0, v9, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, v9}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, v9}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :goto_1
    move-object v0, v8

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v0, -0x1

    iput v0, v8, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v0, 0x0

    iput v0, v8, Landroid/text/StaticLayout;->mCJKLineBreak:I

    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v4, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v5, p10

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Layout$Ellipsizer;

    iput-object v8, v6, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    iput v11, v6, Landroid/text/Layout$Ellipsizer;->mWidth:I

    iput-object v10, v6, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    iput v11, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v7, 0x7

    iput v7, v8, Landroid/text/StaticLayout;->mColumns:I

    nop

    move/from16 v6, p5

    goto :goto_2

    :cond_2
    const/4 v6, 0x5

    iput v6, v8, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v6, p5

    iput v6, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    :goto_2
    const-class v7, Landroid/text/Layout$Directions;

    const/4 v13, 0x2

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/Layout$Directions;

    iput-object v7, v8, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v7, v8, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v13, v7

    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v7

    iput-object v7, v8, Landroid/text/StaticLayout;->mLines:[I

    iput v12, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v7

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v13

    invoke-virtual {v8, v0, v7, v13}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$200(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v4

    sub-float v4, p5, v4

    cmpg-float v6, p8, v4

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-gtz v6, :cond_0

    if-nez p10, :cond_0

    iget-object v6, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v9, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v8

    aput v7, v6, v9

    iget-object v6, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v8, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x6

    aput v7, v6, v8

    return-void

    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, p9

    invoke-virtual {v9, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    sub-int v7, p2, p1

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const/4 v13, 0x0

    const/4 v5, 0x1

    if-ne v2, v8, :cond_4

    iget v8, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v8, v5, :cond_3

    const/4 v8, 0x0

    move v12, v8

    move v8, v7

    :goto_0
    if-lez v8, :cond_2

    add-int/lit8 v14, v8, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v14, p3, v14

    add-float v15, v14, v12

    add-float/2addr v15, v6

    cmpl-float v15, v15, v4

    if-lez v15, :cond_1

    :goto_1
    if-ge v8, v7, :cond_2

    add-int v15, v8, p1

    sub-int v15, v15, p4

    aget v15, p3, v15

    cmpl-float v15, v15, v13

    if-nez v15, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-float/2addr v12, v14

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    move v11, v8

    goto/16 :goto_b

    :cond_3
    const-string v8, "StaticLayout"

    const/4 v5, 0x5

    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string v5, "StaticLayout"

    const-string v8, "Start Ellipsis only supported with one line"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_4
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v5, :cond_c

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v5, :cond_c

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v5, :cond_5

    goto/16 :goto_6

    :cond_5
    iget v5, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_b

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move v14, v7

    sub-float v15, v4, v6

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    :goto_2
    if-lez v14, :cond_7

    add-int/lit8 v16, v14, -0x1

    add-int v16, v16, p1

    sub-int v16, v16, p4

    aget v16, p3, v16

    add-float v17, v16, v8

    cmpl-float v17, v17, v15

    if-lez v17, :cond_6

    move v2, v14

    :goto_3
    if-ge v2, v7, :cond_8

    add-int v14, v2, p1

    sub-int v14, v14, p4

    aget v14, p3, v14

    cmpl-float v14, v14, v13

    if-nez v14, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    add-float v8, v8, v16

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v2, p6

    goto :goto_2

    :cond_7
    move v2, v14

    :cond_8
    sub-float v13, v4, v6

    sub-float/2addr v13, v8

    const/4 v12, 0x0

    move/from16 v18, v12

    move v12, v5

    move/from16 v5, v18

    :goto_4
    if-ge v5, v2, :cond_a

    add-int v14, v5, p1

    sub-int v14, v14, p4

    aget v14, p3, v14

    add-float v16, v14, v12

    cmpl-float v16, v16, v13

    if-lez v16, :cond_9

    goto :goto_5

    :cond_9
    add-float/2addr v12, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    move v10, v5

    sub-int v11, v2, v5

    goto :goto_b

    :cond_b
    const-string v2, "StaticLayout"

    const/4 v5, 0x5

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "StaticLayout"

    const-string v5, "Middle Ellipsis only supported with one line"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_c
    :goto_6
    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_7
    move v5, v12

    if-ge v5, v7, :cond_e

    add-int v8, v5, p1

    sub-int v8, v8, p4

    aget v8, p3, v8

    add-float v12, v8, v2

    add-float/2addr v12, v6

    cmpl-float v12, v12, v4

    if-lez v12, :cond_d

    goto :goto_8

    :cond_d
    add-float/2addr v2, v8

    add-int/lit8 v12, v5, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    move v8, v5

    sub-int v10, v7, v5

    if-eqz p10, :cond_10

    if-nez v10, :cond_10

    if-lez v7, :cond_10

    add-int/lit8 v8, v7, -0x1

    :goto_9
    if-lez v8, :cond_f

    add-int v11, v8, p1

    sub-int v11, v11, p4

    aget v11, p3, v11

    cmpl-float v11, v11, v13

    if-nez v11, :cond_f

    if-eqz p11, :cond_f

    add-int v11, v8, p1

    sub-int v11, v11, p4

    aget-char v11, p11, v11

    const/16 v1, 0xa

    if-eq v11, v1, :cond_f

    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    :cond_f
    sub-int v1, v7, v8

    move v11, v1

    goto :goto_a

    :cond_10
    move v11, v10

    :goto_a
    move v10, v8

    :cond_11
    :goto_b
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    iget-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, v3

    const/4 v5, 0x5

    add-int/2addr v2, v5

    aput v10, v1, v2

    iget-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x6

    aput v11, v1, v2

    return-void
.end method

.method private generateForCJK(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 141

    move-object/from16 v15, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1800(Landroid/text/StaticLayout$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1900(Landroid/text/StaticLayout$Builder;)I

    move-result v12

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v46

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2000(Landroid/text/StaticLayout$Builder;)Z

    move-result v47

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v48

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v49

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    int-to-float v9, v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)Z

    move-result v50

    new-instance v0, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct {v0}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    const/4 v6, 0x0

    iput v6, v15, Landroid/text/StaticLayout;->mLineCount:I

    iput-boolean v6, v15, Landroid/text/StaticLayout;->mEllipsized:Z

    iget v1, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v5, 0x1

    if-ge v1, v5, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v15, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const/16 v17, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v48, v1

    const/16 v51, 0x0

    if-nez v1, :cond_2

    cmpl-float v1, v49, v51

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v6

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v16, v5

    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v18, 0x0

    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v1, :cond_4

    iget-object v1, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v56, v0

    const/4 v3, 0x0

    goto :goto_8

    :cond_4
    :goto_3
    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v1, :cond_5

    move v1, v6

    goto :goto_4

    :cond_5
    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    :goto_4
    iget-object v2, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v2, :cond_6

    move v2, v6

    goto :goto_5

    :cond_6
    iget-object v2, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    :goto_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v5, v3, [I

    move/from16 v19, v6

    :goto_6
    move/from16 v54, v19

    move/from16 v6, v54

    if-ge v6, v1, :cond_7

    move-object/from16 v56, v0

    iget-object v0, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v0, v0, v6

    aput v0, v5, v6

    add-int/lit8 v19, v6, 0x1

    move-object/from16 v0, v56

    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    move-object/from16 v56, v0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_8

    aget v6, v5, v0

    move/from16 v57, v1

    iget-object v1, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v1, v1, v0

    add-int/2addr v6, v1

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v57

    goto :goto_7

    :cond_8
    nop

    move-object v3, v5

    :goto_8
    move-object v6, v3

    nop

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v21, 0x1

    goto :goto_9

    :cond_9
    const/16 v21, 0x0

    :goto_9
    iget-object v0, v15, Landroid/text/StaticLayout;->mLeftPaddings:[I

    iget-object v1, v15, Landroid/text/StaticLayout;->mRightPaddings:[I

    move-object/from16 v22, v6

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    invoke-static/range {v19 .. v24}, Landroid/text/StaticLayout;->nInit(IIZ[I[I[I)J

    move-result-wide v2

    const/4 v0, 0x0

    instance-of v1, v14, Landroid/text/Spanned;

    if-eqz v1, :cond_a

    move-object v1, v14

    check-cast v1, Landroid/text/Spanned;

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    move-object v5, v1

    instance-of v1, v14, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_b

    move-object v1, v14

    check-cast v1, Landroid/text/PrecomputedText;

    nop

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v20

    move-object/from16 v58, v1

    move-wide/from16 v59, v2

    move v2, v13

    move-object/from16 v61, v0

    const/4 v0, 0x0

    move v3, v12

    move/from16 v62, v9

    move-object v9, v4

    move-object v4, v10

    move-object/from16 v63, v9

    const/4 v0, 0x1

    move-object v9, v5

    move-object v5, v11

    move-object/from16 v64, v6

    const/4 v0, 0x0

    move/from16 v6, v19

    move-object/from16 v65, v8

    move-object v8, v7

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v7}, Landroid/text/PrecomputedText;->canUseMeasuredResult(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;II)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v1, v58

    invoke-virtual {v1}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v1

    move-object/from16 v61, v1

    goto :goto_b

    :cond_b
    move-object/from16 v61, v0

    move-wide/from16 v59, v2

    move-object/from16 v63, v4

    move-object/from16 v64, v6

    move-object/from16 v65, v8

    move/from16 v62, v9

    const/4 v0, 0x0

    move-object v9, v5

    move-object v8, v7

    :cond_c
    :goto_b
    if-nez v61, :cond_d

    new-instance v1, Landroid/text/PrecomputedText$Params;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    invoke-direct {v1, v11, v10, v2, v3}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    invoke-static {v14, v1, v13, v12, v0}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v61

    :cond_d
    move-object/from16 v7, v61

    move v1, v0

    move/from16 v37, v17

    move-object/from16 v2, v18

    move-object/from16 v6, v56

    :goto_c
    move v5, v1

    :try_start_0
    array-length v1, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_24

    if-ge v5, v1, :cond_53

    if-nez v5, :cond_e

    move v1, v13

    goto :goto_d

    :cond_e
    add-int/lit8 v1, v5, -0x1

    :try_start_1
    aget-object v1, v7, v1

    iget v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    :goto_d
    move v3, v1

    aget-object v1, v7, v5

    iget v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_20

    const/16 v17, 0x1

    move/from16 v18, v46

    move/from16 v19, v46

    const/16 v20, 0x0

    if-eqz v9, :cond_16

    :try_start_2
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v9, v3, v1, v4}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/LeadingMarginSpan;

    move/from16 v67, v17

    move/from16 v17, v0

    :goto_e
    move/from16 v68, v17

    array-length v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 v69, v12

    move/from16 v12, v68

    if-ge v12, v0, :cond_10

    :try_start_3
    aget-object v0, v4, v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v70, v13

    :try_start_4
    aget-object v13, v4, v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v71, v10

    const/4 v10, 0x1

    :try_start_5
    invoke-interface {v13, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v13

    sub-int v18, v18, v13

    aget-object v10, v4, v12

    const/4 v13, 0x0

    invoke-interface {v10, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v10

    sub-int v19, v19, v10

    instance-of v10, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_f

    move-object v10, v0

    check-cast v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    nop

    invoke-interface {v10}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v13

    move-object/from16 v72, v0

    move/from16 v0, v67

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v0, v13

    move/from16 v67, v0

    goto :goto_f

    :cond_f
    move/from16 v0, v67

    :goto_f
    add-int/lit8 v17, v12, 0x1

    move/from16 v12, v69

    move/from16 v13, v70

    move-object/from16 v10, v71

    const/4 v0, 0x0

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v79, v7

    move-object/from16 v94, v8

    move-object/from16 v76, v9

    move-object v8, v10

    move-object v9, v11

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move/from16 v2, v69

    move/from16 v4, v70

    move-object v10, v6

    goto/16 :goto_3d

    :catchall_1
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v79, v7

    move-object/from16 v94, v8

    move-object/from16 v76, v9

    move-object v8, v10

    move-object v9, v11

    move v4, v13

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move/from16 v2, v69

    move-object v10, v6

    goto/16 :goto_3d

    :cond_10
    move-object/from16 v71, v10

    move/from16 v70, v13

    move/from16 v0, v67

    const-class v10, Landroid/text/style/LineHeightSpan;

    invoke-static {v9, v3, v1, v10}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/LineHeightSpan;

    array-length v12, v10

    if-nez v12, :cond_11

    const/4 v10, 0x0

    move/from16 v73, v0

    move-object/from16 v52, v2

    move-object v0, v10

    move/from16 v13, v18

    move/from16 v12, v19

    goto/16 :goto_14

    :cond_11
    if-eqz v2, :cond_12

    array-length v12, v2

    array-length v13, v10

    if-ge v12, v13, :cond_13

    :cond_12
    array-length v12, v10

    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v12

    move-object v2, v12

    :cond_13
    const/4 v12, 0x0

    :goto_10
    array-length v13, v10

    if-ge v12, v13, :cond_15

    aget-object v13, v10, v12

    invoke-interface {v9, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    if-ge v13, v3, :cond_14

    move/from16 v73, v0

    invoke-virtual {v15, v13}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    aput v0, v2, v12

    goto :goto_11

    :cond_14
    move/from16 v73, v0

    aput v37, v2, v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_11
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v73

    goto :goto_10

    :cond_15
    move/from16 v73, v0

    move-object/from16 v52, v2

    move-object v0, v10

    move/from16 v13, v18

    move/from16 v12, v19

    goto :goto_14

    :catchall_2
    move-exception v0

    move-object/from16 v52, v2

    move-object v10, v6

    move-object/from16 v79, v7

    move-object/from16 v94, v8

    move-object/from16 v76, v9

    :goto_12
    move-object v9, v11

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    :goto_13
    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    goto/16 :goto_3d

    :catchall_3
    move-exception v0

    move-object/from16 v52, v2

    move-object/from16 v79, v7

    move-object/from16 v94, v8

    move-object/from16 v76, v9

    move-object v8, v10

    move-object v9, v11

    move v2, v12

    move v4, v13

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move-object v10, v6

    goto/16 :goto_3d

    :cond_16
    move-object/from16 v71, v10

    move/from16 v69, v12

    move/from16 v70, v13

    move-object/from16 v52, v2

    move/from16 v73, v17

    move/from16 v13, v18

    move/from16 v12, v19

    move-object/from16 v0, v20

    :goto_14
    const/4 v2, 0x0

    if-eqz v9, :cond_18

    :try_start_6
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v9, v3, v1, v4}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/TabStopSpan;

    array-length v10, v4

    if-lez v10, :cond_18

    array-length v10, v4

    new-array v10, v10, [I

    const/16 v17, 0x0

    :goto_15
    move/from16 v74, v17

    move-object/from16 v75, v2

    array-length v2, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v76, v9

    move/from16 v9, v74

    if-ge v9, v2, :cond_17

    :try_start_7
    aget-object v2, v4, v9

    invoke-interface {v2}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v2

    aput v2, v10, v9

    add-int/lit8 v17, v9, 0x1

    move-object/from16 v2, v75

    move-object/from16 v9, v76

    goto :goto_15

    :catchall_4
    move-exception v0

    move-object v10, v6

    move-object/from16 v79, v7

    :goto_16
    move-object/from16 v94, v8

    goto :goto_12

    :cond_17
    array-length v2, v10

    const/4 v9, 0x0

    invoke-static {v10, v9, v2}, Ljava/util/Arrays;->sort([III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v2, v10

    move-object/from16 v75, v2

    goto :goto_17

    :catchall_5
    move-exception v0

    move-object v10, v6

    move-object/from16 v79, v7

    move-object/from16 v94, v8

    move-object/from16 v76, v9

    move-object v9, v11

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    goto/16 :goto_3d

    :cond_18
    move-object/from16 v75, v2

    move-object/from16 v76, v9

    :goto_17
    :try_start_8
    aget-object v2, v7, v5

    iget-object v2, v2, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    move-object v10, v2

    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v2

    move-object v9, v2

    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v2

    move-object/from16 v53, v2

    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v2

    move-object/from16 v54, v2

    array-length v2, v9

    invoke-virtual {v6, v2}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    nop

    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getNativePtr()J

    move-result-wide v20

    sub-int v22, v1, v3

    int-to-float v2, v13

    int-to-float v4, v12

    const/16 v27, 0x14

    move/from16 v77, v1

    iget v1, v15, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v78, v5

    iget-object v5, v8, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v5, v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1f

    move-object/from16 v79, v7

    :try_start_9
    iget-object v7, v8, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v80, v10

    iget-object v10, v8, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move/from16 v81, v12

    iget-object v12, v8, Landroid/text/StaticLayout$LineBreaks;->ascents:[F

    move-object/from16 v82, v0

    iget-object v0, v8, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    move/from16 v83, v13

    iget-object v13, v8, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    invoke-virtual {v6}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v36

    move-wide/from16 v17, v59

    move-object/from16 v19, v9

    move/from16 v23, v2

    move/from16 v24, v73

    move/from16 v25, v4

    move-object/from16 v26, v75

    move/from16 v28, v1

    move-object/from16 v29, v8

    move/from16 v30, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v0

    move-object/from16 v35, v13

    invoke-static/range {v17 .. v36}, Landroid/text/StaticLayout;->nComputeLineBreaks(J[CJIFIF[IIILandroid/text/StaticLayout$LineBreaks;I[I[F[F[F[I[F)I

    move-result v0

    iget-object v1, v8, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v55, v1

    iget-object v1, v8, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v56, v1

    iget-object v1, v8, Landroid/text/StaticLayout$LineBreaks;->ascents:[F

    move-object/from16 v57, v1

    iget-object v1, v8, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    move-object/from16 v58, v1

    iget-object v1, v8, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v61, v1

    iget v1, v15, Landroid/text/StaticLayout;->mCJKLineBreak:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1e

    const/4 v2, 0x4

    if-ne v1, v2, :cond_19

    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {v6}, Landroid/text/AutoGrowArray$FloatArray;->size()I

    move-result v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    add-int v4, v3, v1

    move/from16 v13, v77

    move-object v1, v11

    move-object v2, v14

    move/from16 v67, v3

    const/16 v12, 0xa

    move/from16 v66, v78

    move-object/from16 v5, v71

    move-object v10, v6

    move-object v6, v7

    :try_start_b
    invoke-static/range {v1 .. v6}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/MeasuredParagraph;->getWidths()Landroid/text/AutoGrowArray$FloatArray;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object v1, v2

    move-object v10, v1

    goto :goto_18

    :catchall_6
    move-exception v0

    goto/16 :goto_16

    :catchall_7
    move-exception v0

    move-object v10, v6

    move-object/from16 v94, v8

    move-object v9, v11

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    goto/16 :goto_3d

    :cond_19
    move/from16 v67, v3

    move-object v10, v6

    move/from16 v13, v77

    move/from16 v66, v78

    const/16 v12, 0xa

    :goto_18
    :try_start_c
    iget v1, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v2, v15, Landroid/text/StaticLayout;->mLineCount:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1d

    sub-int v7, v1, v2

    if-eqz v65, :cond_1b

    :try_start_d
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move-object/from16 v6, v65

    if-eq v6, v1, :cond_1a

    :try_start_e
    iget v1, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v6, v1, :cond_1c

    goto :goto_19

    :catchall_8
    move-exception v0

    move-object/from16 v92, v6

    move-object/from16 v94, v8

    move-object v9, v11

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    goto/16 :goto_13

    :cond_1a
    :goto_19
    const/4 v1, 0x1

    goto :goto_1a

    :catchall_9
    move-exception v0

    move-object/from16 v94, v8

    move-object v9, v11

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    goto/16 :goto_3d

    :cond_1b
    move-object/from16 v6, v65

    :cond_1c
    const/4 v1, 0x0

    :goto_1a
    move/from16 v65, v1

    if-lez v7, :cond_21

    if-ge v7, v0, :cond_21

    if-eqz v65, :cond_21

    const/4 v1, 0x0

    const/4 v2, 0x0

    add-int/lit8 v3, v7, -0x1

    :goto_1b
    if-ge v3, v0, :cond_20

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_1d

    aget v4, v56, v3

    add-float/2addr v1, v4

    goto :goto_1d

    :cond_1d
    if-nez v3, :cond_1e

    const/4 v4, 0x0

    goto :goto_1c

    :cond_1e
    add-int/lit8 v4, v3, -0x1

    aget v4, v55, v4

    :goto_1c
    aget v5, v55, v3

    if-ge v4, v5, :cond_1f

    invoke-virtual {v10, v4}, Landroid/text/AutoGrowArray$FloatArray;->get(I)F

    move-result v5

    add-float/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_1f
    :goto_1d
    aget v4, v61, v3

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_20
    add-int/lit8 v3, v7, -0x1

    add-int/lit8 v4, v0, -0x1

    aget v4, v55, v4

    aput v4, v55, v3

    add-int/lit8 v3, v7, -0x1

    aput v1, v56, v3

    add-int/lit8 v3, v7, -0x1

    aput v2, v61, v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move v0, v7

    :cond_21
    const/4 v1, 0x0

    :try_start_f
    iget v2, v15, Landroid/text/StaticLayout;->mLineCount:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1c

    const/4 v3, 0x1

    add-int/2addr v2, v3

    move/from16 v3, v83

    move v4, v3

    move/from16 v5, v67

    move/from16 v17, v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v67

    move/from16 v23, v1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v28, v1

    const/16 v29, 0x0

    move/from16 v30, v67

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v93, v0

    move/from16 v68, v2

    move/from16 v72, v3

    move/from16 v74, v4

    move/from16 v77, v5

    move/from16 v94, v7

    move-object/from16 v95, v8

    move/from16 v78, v17

    move/from16 v84, v18

    move/from16 v85, v19

    move/from16 v86, v20

    move/from16 v87, v21

    move/from16 v88, v22

    move/from16 v89, v23

    move/from16 v90, v28

    move/from16 v91, v29

    move/from16 v3, v30

    move/from16 v12, v31

    move/from16 v0, v32

    move/from16 v7, v33

    move/from16 v8, v34

    move/from16 v4, v35

    move/from16 v2, v36

    move/from16 v96, v37

    move v5, v1

    move/from16 v1, v67

    :goto_1e
    if-ge v1, v13, :cond_4b

    add-int/lit8 v30, v2, 0x1

    :try_start_10
    aget v2, v53, v2

    mul-int/lit8 v17, v4, 0x4

    const/16 v18, 0x0

    add-int/lit8 v17, v17, 0x0

    move/from16 v97, v1

    aget v1, v54, v17
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_15

    move-object/from16 v98, v11

    move-object/from16 v11, v63

    :try_start_11
    iput v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    mul-int/lit8 v1, v4, 0x4

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    aget v1, v54, v1

    iput v1, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-int/lit8 v1, v4, 0x4

    move/from16 v99, v5

    const/4 v5, 0x2

    add-int/2addr v1, v5

    aget v1, v54, v1

    iput v1, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-int/lit8 v1, v4, 0x4

    add-int/lit8 v1, v1, 0x3

    aget v1, v54, v1

    iput v1, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/lit8 v31, v4, 0x1

    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_14

    if-ge v1, v12, :cond_22

    :try_start_12
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    move v12, v1

    goto :goto_20

    :catchall_a
    move-exception v0

    move-object/from16 v92, v6

    move-object v5, v11

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v63, v64

    :goto_1f
    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    move-object/from16 v94, v95

    move/from16 v37, v96

    move-object/from16 v9, v98

    goto/16 :goto_3d

    :cond_22
    :goto_20
    :try_start_13
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_14

    if-ge v1, v7, :cond_23

    :try_start_14
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    move v7, v1

    :cond_23
    :try_start_15
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_14

    if-le v1, v8, :cond_24

    :try_start_16
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    move v8, v1

    :cond_24
    :try_start_17
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    if-le v1, v0, :cond_25

    :try_start_18
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    move v0, v1

    :cond_25
    move-object/from16 v4, v64

    if-eqz v4, :cond_26

    :try_start_19
    iget v1, v15, Landroid/text/StaticLayout;->mLineCount:I

    array-length v5, v4

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v1, v4, v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    sub-int v1, v72, v1

    move v5, v1

    goto :goto_21

    :catchall_b
    move-exception v0

    move-object/from16 v63, v4

    move-object/from16 v92, v6

    move-object v5, v11

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    goto :goto_1f

    :cond_26
    move/from16 v5, v74

    :goto_21
    const/4 v1, 0x0

    move/from16 v107, v0

    move/from16 v32, v1

    move-object/from16 v105, v4

    move/from16 v108, v7

    move/from16 v109, v8

    move-object/from16 v100, v11

    move/from16 v106, v12

    move/from16 v101, v24

    move/from16 v102, v25

    move/from16 v103, v26

    move/from16 v104, v27

    move/from16 v12, v77

    move/from16 v8, v84

    move/from16 v7, v85

    move/from16 v1, v87

    move/from16 v11, v88

    move/from16 v0, v97

    move v4, v3

    move/from16 v3, v86

    :goto_22
    if-ge v0, v2, :cond_4a

    sub-int v17, v0, v67

    :try_start_1a
    aget-char v17, v9, v17
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_13

    move/from16 v110, v17

    move-object/from16 v111, v9

    move-object/from16 v112, v14

    move/from16 v9, v110

    const/16 v14, 0xa

    if-ne v9, v14, :cond_27

    goto :goto_23

    :cond_27
    sub-int v14, v0, v67

    :try_start_1b
    invoke-virtual {v10, v14}, Landroid/text/AutoGrowArray$FloatArray;->get(I)F

    move-result v14
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    add-float v99, v99, v14

    :goto_23
    const/16 v14, 0x20

    move/from16 v113, v0

    const/16 v0, 0x200b

    if-eq v9, v14, :cond_29

    const/16 v14, 0x9

    if-eq v9, v14, :cond_29

    if-ne v9, v0, :cond_28

    goto :goto_24

    :cond_28
    const/4 v14, 0x0

    goto :goto_25

    :cond_29
    :goto_24
    const/4 v14, 0x1

    :goto_25
    move/from16 v33, v14

    int-to-float v14, v5

    cmpg-float v14, v99, v14

    if-lez v14, :cond_33

    if-eqz v33, :cond_2a

    move/from16 v129, v1

    move/from16 v117, v3

    move/from16 v40, v4

    move/from16 v74, v5

    move-object/from16 v92, v6

    move/from16 v118, v7

    move/from16 v119, v8

    move/from16 v121, v9

    move-object/from16 v123, v10

    move/from16 v88, v11

    move/from16 v77, v12

    move/from16 v127, v13

    move-object v10, v15

    move/from16 v125, v69

    move/from16 v126, v70

    move-object/from16 v122, v71

    move-object/from16 v71, v80

    move/from16 v69, v81

    move/from16 v70, v83

    move/from16 v64, v94

    move-object/from16 v94, v95

    move/from16 v39, v97

    move-object/from16 v124, v98

    move-object/from16 v5, v100

    move-object/from16 v63, v105

    move-object/from16 v95, v111

    move-object/from16 v128, v112

    move v3, v0

    move v0, v2

    move-wide/from16 v1, v59

    goto/16 :goto_2b

    :cond_2a
    if-eq v12, v4, :cond_2b

    move v0, v12

    move v14, v8

    move/from16 v17, v7

    move/from16 v18, v3

    move/from16 v19, v1

    move/from16 v20, v78

    :goto_26
    move/from16 v34, v14

    move/from16 v35, v17

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v27, v20

    goto :goto_28

    :cond_2b
    if-eq v11, v4, :cond_2c

    move v0, v11

    move/from16 v14, v101

    move/from16 v17, v102

    move/from16 v18, v103

    move/from16 v19, v104

    move/from16 v20, v89

    goto :goto_26

    :cond_2c
    add-int/lit8 v0, v4, 0x1

    :goto_27
    if-ge v0, v2, :cond_2d

    sub-int v14, v0, v67

    :try_start_1c
    invoke-virtual {v10, v14}, Landroid/text/AutoGrowArray$FloatArray;->get(I)F

    move-result v14
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    cmpl-float v14, v14, v51

    if-nez v14, :cond_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :catchall_c
    move-exception v0

    move-object/from16 v92, v6

    move-object v1, v15

    move-wide/from16 v13, v59

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    move-object/from16 v94, v95

    move/from16 v37, v96

    move-object/from16 v9, v98

    move-object/from16 v5, v100

    move-object/from16 v63, v105

    move-object/from16 v7, v112

    goto/16 :goto_3d

    :cond_2d
    move/from16 v14, v108

    move/from16 v17, v109

    move/from16 v18, v106

    move/from16 v19, v107

    move/from16 v114, v0

    sub-int v0, v4, v67

    :try_start_1d
    invoke-virtual {v10, v0}, Landroid/text/AutoGrowArray$FloatArray;->get(I)F

    move-result v0

    move/from16 v27, v0

    move/from16 v34, v14

    move/from16 v35, v17

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v0, v114

    :goto_28
    const/16 v14, 0xa

    if-ne v9, v14, :cond_2e

    add-int/lit8 v0, v0, 0x1

    :cond_2e
    move/from16 v17, v0

    iget v14, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    move/from16 v115, v1

    const/4 v1, 0x1

    if-ne v14, v1, :cond_2f

    :try_start_1e
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    if-ne v6, v1, :cond_2f

    move v1, v13

    move/from16 v38, v1

    goto :goto_29

    :cond_2f
    move/from16 v38, v17

    :goto_29
    :try_start_1f
    invoke-virtual {v10}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v23
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    const/16 v29, 0x1

    move/from16 v39, v97

    move/from16 v14, v115

    move-object v1, v15

    move/from16 v116, v0

    move v0, v2

    move-object/from16 v2, v112

    move/from16 v117, v3

    move v3, v4

    move/from16 v40, v4

    move-object/from16 v63, v105

    move/from16 v4, v38

    move/from16 v74, v5

    move/from16 v5, v34

    move-object/from16 v17, v6

    move/from16 v6, v35

    move/from16 v118, v7

    move/from16 v64, v94

    move/from16 v7, v36

    move/from16 v119, v8

    move-object/from16 v92, v17

    move-object/from16 v94, v95

    move/from16 v8, v37

    move/from16 v121, v9

    move-object/from16 v120, v100

    move-object/from16 v95, v111

    move/from16 v9, v96

    move-object/from16 v123, v10

    move-object/from16 v122, v71

    move-object/from16 v71, v80

    move/from16 v10, v48

    move/from16 v88, v11

    move-object/from16 v124, v98

    move/from16 v11, v49

    move/from16 v77, v12

    move/from16 v125, v69

    move/from16 v69, v81

    move-object/from16 v12, v82

    move/from16 v127, v13

    move/from16 v126, v70

    move/from16 v70, v83

    move-object/from16 v13, v52

    move/from16 v129, v14

    move-object/from16 v128, v112

    move-object/from16 v14, v120

    move/from16 v15, v91

    move-object/from16 v17, v71

    move/from16 v18, v125

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, v50

    move-object/from16 v22, v95

    move/from16 v24, v67

    move-object/from16 v25, v92

    move/from16 v26, v62

    move-object/from16 v28, v124

    :try_start_20
    invoke-direct/range {v1 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    move/from16 v2, v116

    if-ge v2, v0, :cond_30

    move-object/from16 v5, v120

    :try_start_21
    iget v3, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v7, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    move/from16 v106, v3

    move/from16 v107, v4

    move/from16 v108, v6

    move/from16 v109, v7

    goto :goto_2a

    :catchall_d
    move-exception v0

    move/from16 v37, v1

    move-wide/from16 v13, v59

    move-object/from16 v8, v122

    move-object/from16 v10, v123

    move-object/from16 v9, v124

    move/from16 v2, v125

    move/from16 v4, v126

    move-object/from16 v7, v128

    move-object/from16 v1, p0

    goto/16 :goto_3d

    :cond_30
    move-object/from16 v5, v120

    const/4 v3, 0x0

    move v4, v3

    move v6, v3

    move v7, v3

    move v8, v3

    move/from16 v109, v4

    move/from16 v108, v6

    move/from16 v107, v7

    move/from16 v106, v8

    :goto_2a
    move v4, v2

    add-int/lit8 v3, v4, -0x1

    move v6, v4

    move v7, v4

    const/4 v8, 0x0

    move v9, v8

    const/4 v10, 0x0

    move v11, v10

    move v12, v10

    move v13, v10

    move v14, v10

    move v15, v10

    move/from16 v17, v10

    move/from16 v18, v10

    move/from16 v19, v10

    const/16 v91, 0x0

    add-int/lit8 v68, v68, -0x1

    if-gtz v68, :cond_31

    move/from16 v72, v69

    :cond_31
    move/from16 v130, v1

    move-object/from16 v10, p0

    :try_start_22
    iget v1, v10, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v131, v2

    iget v2, v10, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v1, v2, :cond_32

    iget-boolean v1, v10, Landroid/text/StaticLayout;->mEllipsized:Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    if-eqz v1, :cond_32

    move-wide/from16 v1, v59

    invoke-static {v1, v2}, Landroid/text/StaticLayout;->nFinish(J)V

    return-void

    :cond_32
    move-wide/from16 v1, v59

    move-wide/from16 v132, v1

    move/from16 v99, v8

    move/from16 v90, v9

    move/from16 v104, v11

    move/from16 v103, v12

    move/from16 v102, v13

    move/from16 v101, v14

    move v1, v15

    move/from16 v8, v19

    move/from16 v96, v130

    move v11, v6

    move v12, v7

    move/from16 v7, v18

    goto/16 :goto_31

    :catchall_e
    move-exception v0

    move-object v1, v10

    move-wide/from16 v13, v59

    move-object/from16 v8, v122

    move-object/from16 v10, v123

    move-object/from16 v9, v124

    move/from16 v2, v125

    move/from16 v4, v126

    move-object/from16 v7, v128

    move/from16 v37, v130

    goto/16 :goto_3d

    :catchall_f
    move-exception v0

    move-object/from16 v5, v120

    move-wide/from16 v13, v59

    move/from16 v37, v96

    move-object/from16 v8, v122

    move-object/from16 v10, v123

    move-object/from16 v9, v124

    move/from16 v2, v125

    move/from16 v4, v126

    move-object/from16 v7, v128

    move-object/from16 v1, p0

    goto/16 :goto_3d

    :catchall_10
    move-exception v0

    move-object/from16 v92, v6

    move-object/from16 v123, v10

    move-object/from16 v94, v95

    move-object/from16 v5, v100

    move-object/from16 v63, v105

    move-object v1, v15

    move-wide/from16 v13, v59

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    move/from16 v37, v96

    move-object/from16 v9, v98

    move-object/from16 v7, v112

    goto/16 :goto_3d

    :cond_33
    move/from16 v129, v1

    move/from16 v117, v3

    move/from16 v40, v4

    move/from16 v74, v5

    move-object/from16 v92, v6

    move/from16 v118, v7

    move/from16 v119, v8

    move/from16 v121, v9

    move-object/from16 v123, v10

    move/from16 v88, v11

    move/from16 v77, v12

    move/from16 v127, v13

    move-object v10, v15

    move/from16 v125, v69

    move/from16 v126, v70

    move-object/from16 v122, v71

    move-object/from16 v71, v80

    move/from16 v69, v81

    move/from16 v70, v83

    move/from16 v64, v94

    move-object/from16 v94, v95

    move/from16 v39, v97

    move-object/from16 v124, v98

    move-object/from16 v5, v100

    move-object/from16 v63, v105

    move-object/from16 v95, v111

    move-object/from16 v128, v112

    move v3, v0

    move v0, v2

    move-wide/from16 v1, v59

    :goto_2b
    move/from16 v89, v99

    if-nez v33, :cond_34

    move/from16 v90, v99

    :cond_34
    add-int/lit8 v4, v113, 0x1

    move/from16 v6, v103

    move/from16 v12, v106

    if-ge v12, v6, :cond_35

    move/from16 v103, v12

    move/from16 v6, v103

    :cond_35
    move/from16 v7, v101

    move/from16 v8, v108

    if-ge v8, v7, :cond_36

    move/from16 v101, v8

    move/from16 v7, v101

    :cond_36
    move/from16 v9, v102

    move/from16 v11, v109

    if-le v11, v9, :cond_37

    move/from16 v102, v11

    move/from16 v9, v102

    :cond_37
    move/from16 v13, v104

    move/from16 v14, v107

    if-le v14, v13, :cond_38

    move/from16 v104, v14

    move/from16 v13, v104

    :cond_38
    move/from16 v15, v121

    if-ne v15, v3, :cond_39

    const/16 v32, 0x1

    :cond_39
    const/4 v3, 0x0

    move-wide/from16 v132, v1

    :try_start_23
    iget v1, v10, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3f

    if-nez v33, :cond_3e

    const/16 v1, 0x2f

    if-eq v15, v1, :cond_3a

    const/16 v1, 0x2d

    if-ne v15, v1, :cond_3b

    :cond_3a
    add-int/lit8 v1, v113, 0x1

    if-ge v1, v0, :cond_3e

    add-int/lit8 v1, v113, 0x1

    sub-int v1, v1, v67

    aget-char v1, v95, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_3b
    if-nez v32, :cond_3c

    const/16 v1, 0x2e80

    if-lt v15, v1, :cond_3c

    const/4 v1, 0x1

    invoke-direct {v10, v15, v1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v17

    if-eqz v17, :cond_3c

    add-int/lit8 v1, v113, 0x1

    if-ge v1, v0, :cond_3c

    add-int/lit8 v1, v113, 0x1

    sub-int v1, v1, v67

    aget-char v1, v95, v1

    const/4 v2, 0x0

    invoke-direct {v10, v1, v2}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v1

    if-nez v1, :cond_3e

    :cond_3c
    if-nez v32, :cond_3d

    const/16 v1, 0x2e80

    if-lt v15, v1, :cond_3d

    const/4 v1, 0x1

    invoke-direct {v10, v15, v1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v2

    if-eqz v2, :cond_3d

    add-int/lit8 v1, v113, 0x1

    if-ge v1, v0, :cond_3d

    add-int/lit8 v1, v113, 0x1

    sub-int v1, v1, v67

    aget-char v1, v95, v1

    const/4 v2, 0x1

    invoke-direct {v10, v1, v2}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v1

    if-nez v1, :cond_3d

    goto :goto_2c

    :cond_3d
    const/4 v1, 0x0

    goto :goto_2d

    :cond_3e
    :goto_2c
    const/4 v1, 0x1

    :goto_2d
    const/4 v2, 0x0

    goto :goto_2f

    :cond_3f
    if-nez v33, :cond_44

    const/16 v1, 0x2f

    if-eq v15, v1, :cond_40

    const/16 v1, 0x2d

    if-ne v15, v1, :cond_41

    :cond_40
    add-int/lit8 v1, v113, 0x1

    if-ge v1, v0, :cond_44

    add-int/lit8 v1, v113, 0x1

    sub-int v1, v1, v67

    aget-char v1, v95, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_44

    :cond_41
    const/16 v1, 0x2e80

    if-lt v15, v1, :cond_42

    const/4 v1, 0x1

    invoke-direct {v10, v15, v1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v2

    if-eqz v2, :cond_42

    add-int/lit8 v1, v113, 0x1

    if-ge v1, v0, :cond_42

    add-int/lit8 v1, v113, 0x1

    sub-int v1, v1, v67

    aget-char v1, v95, v1

    const/4 v2, 0x0

    invoke-direct {v10, v1, v2}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    if-eqz v1, :cond_43

    goto :goto_2e

    :cond_42
    const/4 v2, 0x0

    :cond_43
    move v1, v2

    goto :goto_2f

    :cond_44
    const/4 v2, 0x0

    :goto_2e
    const/4 v1, 0x1

    :goto_2f
    if-eqz v1, :cond_49

    move/from16 v3, v90

    add-int/lit8 v17, v113, 0x1

    move/from16 v2, v117

    if-ge v6, v2, :cond_45

    move v2, v6

    :cond_45
    move/from16 v134, v1

    move/from16 v1, v119

    if-ge v7, v1, :cond_46

    move v1, v7

    :cond_46
    move/from16 v135, v1

    move/from16 v1, v118

    if-le v9, v1, :cond_47

    move v1, v9

    :cond_47
    move/from16 v136, v1

    move/from16 v1, v129

    if-le v13, v1, :cond_48

    move v1, v13

    :cond_48
    move/from16 v78, v3

    goto :goto_30

    :cond_49
    move/from16 v2, v117

    move/from16 v85, v118

    move/from16 v84, v119

    move/from16 v1, v129

    move/from16 v17, v77

    move/from16 v135, v84

    move/from16 v136, v85

    :goto_30
    move/from16 v103, v6

    move/from16 v101, v7

    move/from16 v108, v8

    move/from16 v102, v9

    move/from16 v109, v11

    move/from16 v106, v12

    move/from16 v104, v13

    move/from16 v107, v14

    move/from16 v12, v17

    move/from16 v3, v113

    move/from16 v8, v135

    move/from16 v7, v136

    move/from16 v17, v2

    move v11, v4

    move/from16 v4, v40

    :goto_31
    const/4 v15, 0x1

    add-int/lit8 v2, v3, 0x1

    move-object/from16 v100, v5

    move-object v15, v10

    move/from16 v3, v17

    move/from16 v97, v39

    move-object/from16 v105, v63

    move/from16 v81, v69

    move/from16 v83, v70

    move-object/from16 v80, v71

    move/from16 v5, v74

    move-object/from16 v6, v92

    move-object/from16 v9, v95

    move-object/from16 v71, v122

    move-object/from16 v10, v123

    move-object/from16 v98, v124

    move/from16 v69, v125

    move/from16 v70, v126

    move/from16 v13, v127

    move-object/from16 v14, v128

    move-wide/from16 v59, v132

    move-object/from16 v95, v94

    move/from16 v94, v64

    move/from16 v140, v2

    move v2, v0

    move/from16 v0, v140

    goto/16 :goto_22

    :catchall_11
    move-exception v0

    move-object v1, v10

    move/from16 v37, v96

    move-object/from16 v8, v122

    move-object/from16 v10, v123

    move-object/from16 v9, v124

    move/from16 v2, v125

    move/from16 v4, v126

    move-object/from16 v7, v128

    move-wide/from16 v13, v132

    goto/16 :goto_3d

    :catchall_12
    move-exception v0

    move-object/from16 v92, v6

    move-object/from16 v123, v10

    move-object/from16 v94, v95

    move-object/from16 v5, v100

    move-object/from16 v63, v105

    move-object v1, v15

    move-wide/from16 v13, v59

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    move/from16 v37, v96

    move-object/from16 v9, v98

    move-object/from16 v7, v112

    goto/16 :goto_3d

    :catchall_13
    move-exception v0

    move-object/from16 v92, v6

    move-object/from16 v123, v10

    move-object/from16 v94, v95

    move-object/from16 v5, v100

    move-object/from16 v63, v105

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    move/from16 v37, v96

    move-object/from16 v9, v98

    goto/16 :goto_3d

    :cond_4a
    move v0, v2

    move v2, v3

    move/from16 v40, v4

    move/from16 v74, v5

    move-object/from16 v92, v6

    move/from16 v85, v7

    move/from16 v84, v8

    move-object/from16 v123, v10

    move/from16 v88, v11

    move/from16 v77, v12

    move/from16 v127, v13

    move-object/from16 v128, v14

    move-object v10, v15

    move-wide/from16 v132, v59

    move/from16 v125, v69

    move/from16 v126, v70

    move-object/from16 v122, v71

    move-object/from16 v71, v80

    move/from16 v69, v81

    move/from16 v70, v83

    move/from16 v64, v94

    move-object/from16 v94, v95

    move/from16 v39, v97

    move-object/from16 v124, v98

    move-object/from16 v5, v100

    move/from16 v7, v101

    move/from16 v6, v103

    move/from16 v13, v104

    move-object/from16 v63, v105

    move/from16 v12, v106

    move/from16 v14, v107

    move/from16 v8, v108

    move/from16 v11, v109

    const/4 v15, 0x1

    move-object/from16 v95, v9

    move/from16 v9, v102

    move v3, v0

    move/from16 v87, v1

    move/from16 v86, v2

    move v1, v3

    move/from16 v26, v6

    move/from16 v24, v7

    move v7, v8

    move/from16 v25, v9

    move-object v15, v10

    move v8, v11

    move/from16 v27, v13

    move v0, v14

    move/from16 v2, v30

    move/from16 v4, v31

    move/from16 v3, v40

    move-object/from16 v6, v92

    move-object/from16 v9, v95

    move-object/from16 v71, v122

    move-object/from16 v10, v123

    move-object/from16 v11, v124

    move/from16 v69, v125

    move/from16 v70, v126

    move/from16 v13, v127

    move-object/from16 v14, v128

    move-object/from16 v95, v94

    move/from16 v94, v64

    move-object/from16 v64, v63

    move-object/from16 v63, v5

    move/from16 v5, v99

    goto/16 :goto_1e

    :catchall_14
    move-exception v0

    move-object/from16 v92, v6

    move-object/from16 v123, v10

    move-object v5, v11

    move-object/from16 v63, v64

    move-object/from16 v94, v95

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    move/from16 v37, v96

    move-object/from16 v9, v98

    goto/16 :goto_3d

    :catchall_15
    move-exception v0

    move-object/from16 v92, v6

    move-object/from16 v123, v10

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v94, v95

    move-object v9, v11

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    move/from16 v37, v96

    goto/16 :goto_3d

    :cond_4b
    move/from16 v99, v5

    move-object/from16 v92, v6

    move-object/from16 v123, v10

    move-object/from16 v124, v11

    move/from16 v127, v13

    move-object/from16 v128, v14

    move-object v10, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move/from16 v125, v69

    move/from16 v126, v70

    move-object/from16 v122, v71

    move-object/from16 v71, v80

    move/from16 v69, v81

    move/from16 v70, v83

    move/from16 v64, v94

    move-object/from16 v94, v95

    const/4 v1, 0x0

    const/4 v15, 0x1

    move-object/from16 v95, v9

    move/from16 v6, v127

    if-eq v6, v3, :cond_50

    :try_start_24
    iget v9, v10, Landroid/text/StaticLayout;->mLineCount:I

    iget v11, v10, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1a

    if-lt v9, v11, :cond_4d

    :try_start_25
    iget-boolean v9, v10, Landroid/text/StaticLayout;->mEllipsized:Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    if-nez v9, :cond_4c

    goto :goto_33

    :cond_4c
    move/from16 v137, v0

    move/from16 v138, v2

    move-object/from16 v139, v123

    move-object/from16 v9, v124

    move/from16 v2, v125

    goto/16 :goto_36

    :catchall_16
    move-exception v0

    move-object v1, v10

    move/from16 v37, v96

    move-object/from16 v8, v122

    move-object/from16 v10, v123

    move-object/from16 v9, v124

    :goto_32
    move/from16 v2, v125

    move/from16 v4, v126

    move-object/from16 v7, v128

    goto/16 :goto_3d

    :cond_4d
    :goto_33
    or-int v9, v26, v27

    or-int v9, v9, v25

    or-int v9, v9, v24

    if-nez v9, :cond_4e

    move-object/from16 v9, v124

    :try_start_26
    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget v11, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v15, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v137, v0

    iget v0, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_17

    goto :goto_34

    :catchall_17
    move-exception v0

    move-object v1, v10

    move/from16 v37, v96

    move-object/from16 v8, v122

    move-object/from16 v10, v123

    goto :goto_32

    :cond_4e
    move/from16 v137, v0

    move-object/from16 v9, v124

    move/from16 v15, v24

    move/from16 v0, v25

    move/from16 v11, v26

    move/from16 v1, v27

    :goto_34
    move/from16 v138, v2

    move-object/from16 v2, v123

    :try_start_27
    invoke-virtual {v2}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v39
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_19

    move-object/from16 v139, v2

    move/from16 v2, v125

    if-eq v6, v2, :cond_4f

    const/16 v45, 0x1

    goto :goto_35

    :cond_4f
    nop

    const/16 v45, 0x0

    :goto_35
    move-object/from16 v17, v10

    move-object/from16 v18, v128

    move/from16 v19, v3

    move/from16 v20, v6

    move/from16 v21, v15

    move/from16 v22, v0

    move/from16 v23, v11

    move/from16 v24, v1

    move/from16 v25, v96

    move/from16 v26, v48

    move/from16 v27, v49

    move-object/from16 v28, v82

    move-object/from16 v29, v52

    move-object/from16 v30, v5

    move/from16 v31, v91

    move/from16 v32, v16

    move-object/from16 v33, v71

    move/from16 v34, v2

    move/from16 v35, p2

    move/from16 v36, p3

    move/from16 v37, v50

    move-object/from16 v38, v95

    move/from16 v40, v67

    move-object/from16 v41, v92

    move/from16 v42, v62

    move/from16 v43, v99

    move-object/from16 v44, v9

    :try_start_28
    invoke-direct/range {v17 .. v45}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v17
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_18

    move/from16 v27, v1

    move/from16 v26, v11

    move/from16 v37, v17

    goto :goto_37

    :catchall_18
    move-exception v0

    move-object v1, v10

    move/from16 v37, v96

    goto/16 :goto_38

    :catchall_19
    move-exception v0

    move-object/from16 v139, v2

    move/from16 v2, v125

    move-object v1, v10

    move/from16 v37, v96

    move-object/from16 v8, v122

    move/from16 v4, v126

    move-object/from16 v7, v128

    move-object/from16 v10, v139

    goto/16 :goto_3d

    :catchall_1a
    move-exception v0

    move-object/from16 v139, v123

    move-object/from16 v9, v124

    move/from16 v2, v125

    move-object v1, v10

    move/from16 v37, v96

    move-object/from16 v8, v122

    move/from16 v4, v126

    move-object/from16 v7, v128

    move-object/from16 v10, v139

    goto/16 :goto_3d

    :cond_50
    move/from16 v137, v0

    move/from16 v138, v2

    move-object/from16 v139, v123

    move-object/from16 v9, v124

    move/from16 v2, v125

    :goto_36
    move/from16 v15, v24

    move/from16 v0, v25

    move/from16 v37, v96

    :goto_37
    if-eq v6, v2, :cond_52

    :try_start_29
    iget v1, v10, Landroid/text/StaticLayout;->mLineCount:I

    iget v11, v10, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v1, v11, :cond_51

    iget-boolean v1, v10, Landroid/text/StaticLayout;->mEllipsized:Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1b

    if-eqz v1, :cond_51

    goto :goto_39

    :cond_51
    add-int/lit8 v1, v66, 0x1

    move v12, v2

    move-object v11, v9

    move-object v15, v10

    move-wide/from16 v59, v13

    move-object/from16 v2, v52

    move-object/from16 v64, v63

    move-object/from16 v9, v76

    move-object/from16 v7, v79

    move-object/from16 v65, v92

    move-object/from16 v8, v94

    move-object/from16 v10, v122

    move/from16 v13, v126

    move-object/from16 v14, v128

    move-object/from16 v6, v139

    const/4 v0, 0x0

    move-object/from16 v63, v5

    goto/16 :goto_c

    :catchall_1b
    move-exception v0

    move-object v1, v10

    :goto_38
    move-object/from16 v8, v122

    move/from16 v4, v126

    move-object/from16 v7, v128

    move-object/from16 v10, v139

    goto/16 :goto_3d

    :cond_52
    :goto_39
    move-object v1, v10

    move/from16 v3, v37

    move-object/from16 v6, v139

    goto/16 :goto_3a

    :catchall_1c
    move-exception v0

    move-object/from16 v92, v6

    move-object/from16 v94, v8

    move-object/from16 v139, v10

    move-object v9, v11

    move-object/from16 v128, v14

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move/from16 v2, v69

    move-object v1, v15

    move/from16 v4, v70

    move-object/from16 v8, v71

    move-object/from16 v7, v128

    goto/16 :goto_3d

    :catchall_1d
    move-exception v0

    move-object/from16 v94, v8

    move-object/from16 v139, v10

    move-object v9, v11

    move-object/from16 v128, v14

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move/from16 v2, v69

    move-object v1, v15

    move/from16 v4, v70

    move-object/from16 v8, v71

    move-object/from16 v7, v128

    goto/16 :goto_3d

    :catchall_1e
    move-exception v0

    move-object v10, v6

    move-object/from16 v94, v8

    move-object v9, v11

    move-object/from16 v128, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    move-object/from16 v7, v128

    goto/16 :goto_3d

    :catchall_1f
    move-exception v0

    move-object v10, v6

    move-object/from16 v79, v7

    move-object/from16 v94, v8

    move-object v9, v11

    move-object/from16 v128, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move/from16 v2, v69

    move/from16 v4, v70

    move-object/from16 v8, v71

    move-object/from16 v7, v128

    goto/16 :goto_3d

    :catchall_20
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v79, v7

    move-object/from16 v94, v8

    move-object/from16 v76, v9

    move-object/from16 v122, v10

    move-object v9, v11

    move v2, v12

    move/from16 v126, v13

    move-object/from16 v128, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move-object v10, v6

    move-object/from16 v52, v18

    move-object/from16 v8, v122

    move/from16 v4, v126

    move-object/from16 v7, v128

    goto/16 :goto_3d

    :cond_53
    move-object/from16 v18, v2

    move-object/from16 v79, v7

    move-object/from16 v94, v8

    move-object/from16 v76, v9

    move-object/from16 v122, v10

    move-object v9, v11

    move v2, v12

    move/from16 v126, v13

    move-object/from16 v128, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move-object v10, v6

    move-object/from16 v52, v18

    move/from16 v3, v37

    :goto_3a
    move/from16 v4, v126

    if-eq v2, v4, :cond_55

    add-int/lit8 v12, v2, -0x1

    move-object/from16 v7, v128

    :try_start_2a
    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_21

    const/16 v8, 0xa

    if-ne v0, v8, :cond_54

    goto :goto_3b

    :cond_54
    move-object/from16 v8, v122

    goto/16 :goto_3c

    :catchall_21
    move-exception v0

    move/from16 v37, v3

    move-object v10, v6

    move-object/from16 v8, v122

    goto/16 :goto_3d

    :cond_55
    move-object/from16 v7, v128

    :goto_3b
    :try_start_2b
    iget v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    iget v8, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_23

    if-ge v0, v8, :cond_56

    nop

    move-object/from16 v8, v122

    const/4 v0, 0x0

    :try_start_2c
    invoke-static {v7, v2, v2, v8, v0}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v33

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget v0, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v10, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v11, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v12, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v7

    move/from16 v19, v2

    move/from16 v20, v2

    move/from16 v21, v0

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v3

    move/from16 v26, v48

    move/from16 v27, v49

    move-object/from16 v30, v5

    move/from16 v32, v16

    move/from16 v34, v2

    move/from16 v35, p2

    move/from16 v36, p3

    move/from16 v37, v50

    move/from16 v40, v4

    move-object/from16 v41, v92

    move/from16 v42, v62

    move-object/from16 v44, v9

    invoke-direct/range {v17 .. v45}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_22

    move v3, v0

    goto :goto_3c

    :catchall_22
    move-exception v0

    move/from16 v37, v3

    move-object v10, v6

    goto :goto_3d

    :cond_56
    move-object/from16 v8, v122

    :goto_3c
    invoke-static {v13, v14}, Landroid/text/StaticLayout;->nFinish(J)V

    nop

    return-void

    :catchall_23
    move-exception v0

    move-object/from16 v8, v122

    move/from16 v37, v3

    move-object v10, v6

    goto :goto_3d

    :catchall_24
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v79, v7

    move-object/from16 v94, v8

    move-object/from16 v76, v9

    move-object v8, v10

    move-object v9, v11

    move v2, v12

    move v4, v13

    move-object v7, v14

    move-object v1, v15

    move-wide/from16 v13, v59

    move-object/from16 v5, v63

    move-object/from16 v63, v64

    move-object/from16 v92, v65

    move-object v10, v6

    move-object/from16 v52, v18

    :goto_3d
    invoke-static {v13, v14}, Landroid/text/StaticLayout;->nFinish(J)V

    throw v0
.end method

.method private getTotalInsets(I)F
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    :cond_1
    int-to-float v1, v0

    return v1
.end method

.method private final isIdeographic(CZ)Z
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x2e80

    if-lt p1, v1, :cond_0

    const/16 v1, 0x2fff

    if-gt p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x3000

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x3040

    const/4 v2, 0x0

    if-lt p1, v1, :cond_3

    const/16 v1, 0x309f

    if-gt p1, v1, :cond_3

    if-nez p2, :cond_2

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    return v2

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/16 v1, 0x30a0

    if-lt p1, v1, :cond_5

    const/16 v1, 0x30ff

    if-gt p1, v1, :cond_5

    if-nez p2, :cond_4

    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    return v2

    :cond_4
    :goto_1
    return v0

    :cond_5
    const/16 v1, 0x3400

    if-lt p1, v1, :cond_6

    const/16 v1, 0x4db5

    if-gt p1, v1, :cond_6

    return v0

    :cond_6
    const/16 v1, 0x4e00

    if-lt p1, v1, :cond_7

    const v1, 0x9fbb

    if-gt p1, v1, :cond_7

    return v0

    :cond_7
    const v1, 0xf900

    if-lt p1, v1, :cond_8

    const v1, 0xfad9

    if-gt p1, v1, :cond_8

    return v0

    :cond_8
    const v1, 0xa000

    if-lt p1, v1, :cond_9

    const v1, 0xa48f

    if-gt p1, v1, :cond_9

    return v0

    :cond_9
    const v1, 0xa490

    if-lt p1, v1, :cond_a

    const v1, 0xa4cf

    if-gt p1, v1, :cond_a

    return v0

    :cond_a
    const v1, 0xfe62

    if-lt p1, v1, :cond_b

    const v1, 0xfe66

    if-gt p1, v1, :cond_b

    return v0

    :cond_b
    const v1, 0xff10

    if-lt p1, v1, :cond_c

    const v1, 0xff19

    if-gt p1, v1, :cond_c

    return v0

    :cond_c
    iget v1, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_18

    const/16 v1, 0x3001

    if-lt p1, v1, :cond_10

    const/16 v1, 0x301f

    if-gt p1, v1, :cond_10

    if-nez p2, :cond_e

    const/16 v1, 0x3005

    if-eq p1, v1, :cond_d

    const/16 v1, 0x3009

    if-eq p1, v1, :cond_d

    const/16 v1, 0x300b

    if-eq p1, v1, :cond_d

    const/16 v1, 0x300d

    if-eq p1, v1, :cond_d

    const/16 v1, 0x300f

    if-eq p1, v1, :cond_d

    const/16 v1, 0x3011

    if-eq p1, v1, :cond_d

    const/16 v1, 0x3015

    if-eq p1, v1, :cond_d

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :cond_d
    :pswitch_0
    return v2

    :cond_e
    :goto_2
    const/16 v1, 0x3008

    if-eq p1, v1, :cond_f

    const/16 v1, 0x300a

    if-eq p1, v1, :cond_f

    const/16 v1, 0x300c

    if-eq p1, v1, :cond_f

    const/16 v1, 0x300e

    if-eq p1, v1, :cond_f

    const/16 v1, 0x3010

    if-eq p1, v1, :cond_f

    const/16 v1, 0x3014

    if-eq p1, v1, :cond_f

    return v0

    :cond_f
    return v2

    :cond_10
    const v1, 0xff01

    if-lt p1, v1, :cond_13

    const v1, 0xff9f

    if-gt p1, v1, :cond_13

    if-nez p2, :cond_11

    sparse-switch p1, :sswitch_data_2

    goto :goto_3

    :sswitch_2
    return v2

    :cond_11
    :goto_3
    const v1, 0xff08

    if-eq p1, v1, :cond_12

    const v1, 0xff3b

    if-eq p1, v1, :cond_12

    const v1, 0xff5b

    if-eq p1, v1, :cond_12

    const v1, 0xff62

    if-eq p1, v1, :cond_12

    return v0

    :cond_12
    return v2

    :cond_13
    const/16 v1, 0x21

    if-lt p1, v1, :cond_16

    const/16 v3, 0x3f

    if-gt p1, v3, :cond_16

    if-nez p2, :cond_15

    if-eq p1, v1, :cond_14

    const/16 v1, 0x29

    if-eq p1, v1, :cond_14

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_14

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_14

    if-eq p1, v3, :cond_14

    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :cond_14
    :pswitch_1
    return v2

    :cond_15
    :goto_4
    return v0

    :cond_16
    const/16 v0, 0x5d

    if-eq p1, v0, :cond_17

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_17

    const/16 v0, 0x90

    if-eq p1, v0, :cond_17

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_17

    const/16 v0, 0x2019

    if-eq p1, v0, :cond_17

    const/16 v0, 0x201d

    if-eq p1, v0, :cond_17

    const/16 v0, 0x2032

    if-eq p1, v0, :cond_17

    const/16 v0, 0x2033

    if-eq p1, v0, :cond_17

    const/16 v0, 0x309b

    if-eq p1, v0, :cond_17

    const/16 v0, 0x309c

    if-eq p1, v0, :cond_17

    const/16 v0, 0x30fb

    if-ne p1, v0, :cond_18

    :cond_17
    return p2

    :cond_18
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xff01 -> :sswitch_2
        0xff09 -> :sswitch_2
        0xff0c -> :sswitch_2
        0xff0e -> :sswitch_2
        0xff1a -> :sswitch_2
        0xff1b -> :sswitch_2
        0xff1f -> :sswitch_2
        0xff3d -> :sswitch_2
        0xff5d -> :sswitch_2
        0xff61 -> :sswitch_2
        0xff63 -> :sswitch_2
        0xff64 -> :sswitch_2
        0xff65 -> :sswitch_2
        0xff70 -> :sswitch_2
        0xff9e -> :sswitch_2
        0xff9f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static native nComputeLineBreaks(J[CJIFIF[IIILandroid/text/StaticLayout$LineBreaks;I[I[F[F[F[I[F)I
.end method

.method private static native nFinish(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit(IIZ[I[I[I)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 33

    move-object/from16 v12, p0

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v11, p11

    move-object/from16 v9, p13

    move/from16 v8, p17

    move/from16 v10, p23

    move-object/from16 v7, p24

    iget v6, v12, Landroid/text/StaticLayout;->mLineCount:I

    iget v0, v12, Landroid/text/StaticLayout;->mColumns:I

    mul-int v16, v6, v0

    iget v0, v12, Landroid/text/StaticLayout;->mColumns:I

    add-int v0, v16, v0

    const/4 v5, 0x1

    add-int/lit8 v4, v0, 0x1

    iget-object v0, v12, Landroid/text/StaticLayout;->mLines:[I

    invoke-virtual/range {p16 .. p16}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v17

    array-length v1, v0

    const/4 v3, 0x0

    if-lt v4, v1, :cond_0

    invoke-static {v4}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v12, Landroid/text/StaticLayout;->mLines:[I

    move-object v0, v1

    :cond_0
    move-object/from16 v18, v0

    iget-object v0, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    if-lt v6, v0, :cond_1

    const-class v0, Landroid/text/Layout$Directions;

    invoke-static {v6}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iget-object v1, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v2, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    :cond_1
    if-eqz v11, :cond_4

    move/from16 v2, p4

    iput v2, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v1, p5

    iput v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, p6

    iput v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v8, p7

    iput v8, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v19, v3

    :goto_0
    move/from16 v20, v19

    array-length v3, v11

    move/from16 v8, v20

    if-ge v8, v3, :cond_3

    aget-object v3, v11, v8

    instance-of v3, v3, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v3, :cond_2

    aget-object v3, v11, v8

    check-cast v3, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v19, p12, v8

    move-object v0, v3

    move-object/from16 v1, p1

    move v2, v13

    const/16 v20, 0x0

    move v3, v14

    move/from16 v21, v4

    move/from16 v4, v19

    move v10, v5

    move/from16 v5, p8

    move/from16 v19, v6

    move-object v6, v9

    move-object v10, v7

    move-object/from16 v7, p27

    invoke-interface/range {v0 .. v7}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_1

    :cond_2
    move/from16 v21, v4

    move/from16 v19, v6

    move-object v10, v7

    const/16 v20, 0x0

    aget-object v0, v11, v8

    aget v4, p12, v8

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    move/from16 v5, p8

    move-object v6, v9

    invoke-interface/range {v0 .. v6}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_1
    add-int/lit8 v0, v8, 0x1

    move/from16 v2, p4

    move/from16 v1, p5

    move-object v7, v10

    move/from16 v6, v19

    move/from16 v3, v20

    move/from16 v4, v21

    const/4 v5, 0x1

    move/from16 v8, p7

    move/from16 v10, p23

    move/from16 v19, v0

    move/from16 v0, p6

    goto :goto_0

    :cond_3
    move/from16 v21, v4

    move/from16 v19, v6

    move-object v10, v7

    const/16 v20, 0x0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v22, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v27, v3

    goto :goto_2

    :cond_4
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v19, v6

    move-object v10, v7

    move/from16 v22, p4

    move/from16 v25, p5

    move/from16 v26, p6

    move/from16 v27, p7

    :goto_2
    if-nez v19, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, v20

    :goto_3
    move/from16 v28, v0

    add-int/lit8 v6, v19, 0x1

    iget v0, v12, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v6, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    move/from16 v0, v20

    :goto_4
    move/from16 v29, v0

    if-eqz v10, :cond_10

    if-eqz p28, :cond_7

    iget v0, v12, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, v12, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v2, :cond_8

    move v0, v1

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    :cond_8
    move/from16 v0, v20

    :goto_5
    move v6, v1

    move-object v7, v10

    move/from16 v8, p23

    move v10, v0

    iget v0, v12, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v6, :cond_9

    if-nez p28, :cond_a

    :cond_9
    if-eqz v28, :cond_b

    if-nez p28, :cond_b

    :cond_a
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v0, :cond_d

    :cond_b
    if-nez v28, :cond_e

    if-nez v29, :cond_c

    if-nez p28, :cond_e

    :cond_c
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v0, :cond_e

    :cond_d
    move v0, v6

    goto :goto_6

    :cond_e
    move/from16 v0, v20

    :goto_6
    move/from16 v23, v0

    if-eqz v23, :cond_f

    move-object v0, v12

    move v1, v13

    move v2, v14

    move-object/from16 v3, p22

    move v4, v8

    move/from16 v5, p25

    move/from16 v24, v6

    move-object v6, v7

    move/from16 v7, v19

    move v13, v8

    move/from16 v15, p17

    move/from16 v8, p26

    move-object/from16 v9, p27

    move-object/from16 v11, p21

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V

    goto :goto_7

    :cond_f
    move/from16 v24, v6

    move v13, v8

    move/from16 v15, p17

    goto :goto_7

    :cond_10
    move/from16 v13, p23

    move/from16 v15, p17

    const/16 v24, 0x1

    :goto_7
    iget-boolean v0, v12, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_11

    const/4 v3, 0x1

    move-object/from16 v1, p1

    :goto_8
    move v4, v3

    move v3, v13

    move/from16 v2, p2

    goto :goto_a

    :cond_11
    if-eq v13, v15, :cond_12

    if-lez v15, :cond_12

    add-int/lit8 v0, v15, -0x1

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_13

    move/from16 v0, v24

    goto :goto_9

    :cond_12
    move-object/from16 v1, p1

    :cond_13
    move/from16 v0, v20

    :goto_9
    if-ne v14, v15, :cond_14

    if-nez v0, :cond_14

    const/4 v3, 0x1

    goto :goto_8

    :cond_14
    move v3, v13

    move/from16 v2, p2

    if-ne v2, v15, :cond_15

    if-eqz v0, :cond_15

    const/4 v4, 0x1

    goto :goto_a

    :cond_15
    nop

    move/from16 v4, v20

    :goto_a
    move v0, v4

    if-eqz v28, :cond_17

    if-eqz p19, :cond_16

    sub-int v4, v26, v22

    iput v4, v12, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_16
    if-eqz p18, :cond_17

    move/from16 v22, v26

    :cond_17
    if-eqz v0, :cond_19

    if-eqz p19, :cond_18

    sub-int v4, v27, v25

    iput v4, v12, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_18
    if-eqz p18, :cond_19

    move/from16 v25, v27

    :cond_19
    if-eqz p15, :cond_1d

    if-nez p20, :cond_1b

    if-nez v0, :cond_1a

    goto :goto_b

    :cond_1a
    move/from16 v32, v0

    goto :goto_d

    :cond_1b
    :goto_b
    sub-int v6, v25, v22

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, p9, v7

    mul-float/2addr v6, v7

    add-float v6, v6, p10

    float-to-double v9, v6

    const-wide/16 v30, 0x0

    cmpl-double v6, v9, v30

    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    if-ltz v6, :cond_1c

    move/from16 v32, v0

    add-double v0, v9, v30

    double-to-int v0, v0

    goto :goto_c

    :cond_1c
    move/from16 v32, v0

    neg-double v0, v9

    add-double v0, v0, v30

    double-to-int v0, v0

    neg-int v0, v0

    :goto_c
    goto :goto_e

    :cond_1d
    move/from16 v32, v0

    :goto_d
    move/from16 v0, v20

    :goto_e
    add-int/lit8 v1, v16, 0x0

    aput v2, v18, v1

    add-int/lit8 v1, v16, 0x1

    aput p8, v18, v1

    add-int/lit8 v1, v16, 0x2

    add-int v9, v25, v0

    aput v9, v18, v1

    add-int/lit8 v1, v16, 0x3

    aput v0, v18, v1

    iget-boolean v1, v12, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v1, :cond_1f

    if-eqz v29, :cond_1f

    if-eqz p18, :cond_1e

    move/from16 v1, v27

    goto :goto_f

    :cond_1e
    move/from16 v1, v25

    :goto_f
    sub-int v9, v1, v22

    add-int v9, p8, v9

    iput v9, v12, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :cond_1f
    sub-int v1, v25, v22

    add-int/2addr v1, v0

    add-int v1, p8, v1

    iget v6, v12, Landroid/text/StaticLayout;->mColumns:I

    add-int v6, v16, v6

    add-int/lit8 v6, v6, 0x0

    aput v14, v18, v6

    iget v6, v12, Landroid/text/StaticLayout;->mColumns:I

    add-int v6, v16, v6

    add-int/lit8 v6, v6, 0x1

    aput v1, v18, v6

    add-int/lit8 v6, v16, 0x0

    aget v9, v18, v6

    const/high16 v10, 0x20000000

    and-int v10, p14, v10

    or-int/2addr v9, v10

    aput v9, v18, v6

    add-int/lit8 v6, v16, 0x4

    aput p14, v18, v6

    add-int/lit8 v6, v16, 0x0

    aget v9, v18, v6

    shl-int/lit8 v10, v17, 0x1e

    or-int/2addr v9, v10

    aput v9, v18, v6

    iget-object v6, v12, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v9, v2, v3

    sub-int v10, v14, v3

    move-object/from16 v11, p16

    invoke-virtual {v11, v9, v10}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v9

    aput-object v9, v6, v19

    iget v6, v12, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v12, Landroid/text/StaticLayout;->mLineCount:I

    return v1
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 106

    move-object/from16 v15, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1800(Landroid/text/StaticLayout$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1900(Landroid/text/StaticLayout$Builder;)I

    move-result v12

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2000(Landroid/text/StaticLayout$Builder;)Z

    move-result v46

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v47

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v48

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    int-to-float v8, v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)Z

    move-result v49

    const/4 v0, 0x0

    iput v0, v15, Landroid/text/StaticLayout;->mCJKLineBreak:I

    invoke-virtual {v11}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    const/4 v5, 0x2

    const/4 v1, 0x4

    const/4 v4, 0x1

    if-eqz v6, :cond_2

    const-string/jumbo v2, "ko"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v4, v15, Landroid/text/StaticLayout;->mCJKLineBreak:I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "ja"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v5, v15, Landroid/text/StaticLayout;->mCJKLineBreak:I

    goto :goto_0

    :cond_1
    const-string v2, "ZG"

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v1, v15, Landroid/text/StaticLayout;->mCJKLineBreak:I

    :cond_2
    :goto_0
    iget v2, v15, Landroid/text/StaticLayout;->mCJKLineBreak:I

    if-eq v2, v1, :cond_3c

    iget v1, v15, Landroid/text/StaticLayout;->mCJKLineBreak:I

    if-lez v1, :cond_3

    iget v1, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v4, :cond_3

    move-object/from16 v50, v6

    move-object/from16 v70, v7

    move/from16 v57, v8

    move-object v6, v9

    move/from16 v64, v10

    move-object v7, v11

    move v4, v12

    move v3, v13

    move-object v5, v14

    move-object v9, v15

    goto/16 :goto_2b

    :cond_3
    new-instance v1, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct {v1}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    move-object v3, v1

    new-instance v1, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v1}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    move-object v2, v1

    iput v0, v15, Landroid/text/StaticLayout;->mLineCount:I

    iput-boolean v0, v15, Landroid/text/StaticLayout;->mEllipsized:Z

    iget v1, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v1, v4, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    :goto_1
    iput v1, v15, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const/16 v17, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v47, v1

    const/16 v37, 0x0

    if-nez v1, :cond_6

    cmpl-float v1, v48, v37

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v16, v0

    goto :goto_3

    :cond_6
    :goto_2
    move/from16 v16, v4

    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/16 v18, 0x0

    iget-object v4, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v4, :cond_8

    iget-object v4, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v52, v1

    move-object/from16 v55, v2

    move-object/from16 v56, v3

    const/16 v60, 0x0

    goto :goto_9

    :cond_8
    :goto_4
    iget-object v4, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v4, :cond_9

    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    iget-object v4, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v4, v4

    :goto_5
    iget-object v5, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v5, :cond_a

    const/4 v5, 0x0

    goto :goto_6

    :cond_a
    iget-object v5, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v5, v5

    :goto_6
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v52, v1

    new-array v1, v0, [I

    const/16 v19, 0x0

    :goto_7
    move/from16 v53, v19

    move/from16 v54, v0

    move/from16 v0, v53

    if-ge v0, v4, :cond_b

    move-object/from16 v55, v2

    iget-object v2, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v19, v0, 0x1

    move/from16 v0, v54

    move-object/from16 v2, v55

    goto :goto_7

    :cond_b
    move-object/from16 v55, v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v5, :cond_c

    aget v2, v1, v0

    move-object/from16 v56, v3

    iget-object v3, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v56

    goto :goto_8

    :cond_c
    move-object/from16 v56, v3

    move-object/from16 v60, v1

    :goto_9
    nop

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v57

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v58

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v59, 0x1

    goto :goto_a

    :cond_d
    const/16 v59, 0x0

    :goto_a
    iget-object v0, v15, Landroid/text/StaticLayout;->mLeftPaddings:[I

    iget-object v1, v15, Landroid/text/StaticLayout;->mRightPaddings:[I

    move-object/from16 v61, v0

    move-object/from16 v62, v1

    invoke-static/range {v57 .. v62}, Landroid/text/StaticLayout;->nInit(IIZ[I[I[I)J

    move-result-wide v4

    const/4 v0, 0x0

    instance-of v1, v14, Landroid/text/Spanned;

    if-eqz v1, :cond_e

    move-object v1, v14

    check-cast v1, Landroid/text/Spanned;

    goto :goto_b

    :cond_e
    const/4 v1, 0x0

    :goto_b
    move-object v3, v1

    instance-of v1, v14, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_f

    move-object v2, v14

    check-cast v2, Landroid/text/PrecomputedText;

    nop

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v20

    move/from16 v63, v8

    move-object/from16 v8, v52

    move-object v1, v2

    move-object/from16 v65, v0

    move-object v0, v2

    move-object/from16 v64, v8

    move-object/from16 v8, v55

    move v2, v13

    move-object/from16 v67, v8

    move-object/from16 v66, v56

    move-object v8, v3

    move v3, v12

    move-wide/from16 v68, v4

    const/4 v5, 0x1

    move-object v4, v9

    move v15, v5

    const/16 v38, 0x2

    move-object v5, v11

    move-object/from16 v50, v6

    move/from16 v6, v19

    move-object/from16 v71, v7

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v7}, Landroid/text/PrecomputedText;->canUseMeasuredResult(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;II)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v0

    goto :goto_c

    :cond_f
    move-object/from16 v65, v0

    move-wide/from16 v68, v4

    move-object/from16 v50, v6

    move-object/from16 v71, v7

    move/from16 v63, v8

    move-object/from16 v64, v52

    move-object/from16 v67, v55

    move-object/from16 v66, v56

    const/4 v15, 0x1

    const/16 v38, 0x2

    move-object v8, v3

    :cond_10
    move-object/from16 v0, v65

    :goto_c
    if-nez v0, :cond_11

    new-instance v1, Landroid/text/PrecomputedText$Params;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    invoke-direct {v1, v11, v9, v2, v3}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    const/4 v2, 0x0

    invoke-static {v14, v1, v13, v12, v2}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v0

    :cond_11
    move-object v7, v0

    move/from16 v2, v17

    move-object/from16 v1, v18

    const/4 v0, 0x0

    :goto_d
    :try_start_0
    array-length v3, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_19

    if-ge v0, v3, :cond_38

    if-nez v0, :cond_12

    move v3, v13

    goto :goto_e

    :cond_12
    add-int/lit8 v3, v0, -0x1

    :try_start_1
    aget-object v3, v7, v3

    iget v3, v3, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    :goto_e
    move v4, v3

    aget-object v3, v7, v0

    iget v3, v3, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_14

    const/4 v5, 0x1

    move v6, v10

    move/from16 v17, v10

    const/16 v18, 0x0

    if-eqz v8, :cond_1a

    :try_start_2
    const-class v15, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v8, v4, v3, v15}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/LeadingMarginSpan;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move/from16 v19, v17

    move/from16 v17, v6

    move v6, v5

    const/4 v5, 0x0

    :goto_f
    move-object/from16 v73, v9

    :try_start_3
    array-length v9, v15

    if-ge v5, v9, :cond_14

    aget-object v9, v15, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v74, v11

    :try_start_4
    aget-object v11, v15, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v75, v13

    const/4 v13, 0x1

    :try_start_5
    invoke-interface {v11, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v11

    sub-int v17, v17, v11

    aget-object v11, v15, v5

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v11

    sub-int v19, v19, v11

    instance-of v11, v9, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v11, :cond_13

    move-object v11, v9

    check-cast v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    nop

    invoke-interface {v11}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v6, v13

    :cond_13
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, v73

    move-object/from16 v11, v74

    move/from16 v13, v75

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object/from16 v41, v1

    move/from16 v78, v2

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move v4, v12

    move v3, v13

    move-object v5, v14

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-object/from16 v58, v67

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move-object/from16 v9, p0

    move/from16 v64, v10

    goto/16 :goto_2a

    :cond_14
    move-object/from16 v74, v11

    move/from16 v75, v13

    const-class v5, Landroid/text/style/LineHeightSpan;

    invoke-static {v8, v4, v3, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LineHeightSpan;

    array-length v9, v5

    if-nez v9, :cond_15

    const/4 v5, 0x0

    move-object/from16 v41, v1

    move-object/from16 v39, v5

    move/from16 v40, v6

    move/from16 v15, v17

    move/from16 v11, v19

    move-object/from16 v13, p0

    goto/16 :goto_12

    :cond_15
    if-eqz v1, :cond_16

    array-length v9, v1

    array-length v11, v5

    if-ge v9, v11, :cond_17

    :cond_16
    array-length v9, v5

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v9

    move-object v1, v9

    :cond_17
    const/4 v9, 0x0

    :goto_10
    array-length v11, v5

    if-ge v9, v11, :cond_19

    aget-object v11, v5, v9

    invoke-interface {v8, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ge v11, v4, :cond_18

    move-object/from16 v76, v15

    move-object/from16 v13, p0

    :try_start_6
    invoke-virtual {v13, v11}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v15

    aput v15, v1, v9

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object/from16 v41, v1

    goto/16 :goto_14

    :cond_18
    move-object/from16 v76, v15

    move-object/from16 v13, p0

    aput v2, v1, v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_11
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v15, v76

    goto :goto_10

    :cond_19
    move-object/from16 v13, p0

    move-object/from16 v41, v1

    move-object/from16 v39, v5

    move/from16 v40, v6

    move/from16 v15, v17

    move/from16 v11, v19

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    move-object/from16 v41, v1

    move/from16 v78, v2

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move v4, v12

    move-object v5, v14

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-object/from16 v58, v67

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    move-object/from16 v9, p0

    goto/16 :goto_15

    :catchall_3
    move-exception v0

    move-object/from16 v41, v1

    move/from16 v78, v2

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move-object v7, v11

    move v4, v12

    move v3, v13

    move-object v5, v14

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-object/from16 v58, v67

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v6, v73

    move-object/from16 v9, p0

    move/from16 v64, v10

    goto/16 :goto_2a

    :catchall_4
    move-exception v0

    move-object/from16 v41, v1

    move/from16 v78, v2

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move-object v6, v9

    move-object v7, v11

    move v4, v12

    move v3, v13

    move-object v5, v14

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-object/from16 v58, v67

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v9, p0

    move/from16 v64, v10

    goto/16 :goto_2a

    :cond_1a
    move-object/from16 v73, v9

    move-object/from16 v74, v11

    move/from16 v75, v13

    move-object/from16 v13, p0

    move-object/from16 v41, v1

    move/from16 v40, v5

    move v15, v6

    move/from16 v11, v17

    move-object/from16 v39, v18

    :goto_12
    const/4 v1, 0x0

    if-eqz v8, :cond_1c

    :try_start_7
    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-static {v8, v4, v3, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/TabStopSpan;

    array-length v6, v5

    if-lez v6, :cond_1c

    array-length v6, v5

    new-array v6, v6, [I

    const/4 v9, 0x0

    :goto_13
    move-object/from16 v77, v1

    array-length v1, v5

    if-ge v9, v1, :cond_1b

    aget-object v1, v5, v9

    invoke-interface {v1}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v1

    aput v1, v6, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v77

    goto :goto_13

    :cond_1b
    array-length v1, v6

    const/4 v9, 0x0

    invoke-static {v6, v9, v1}, Ljava/util/Arrays;->sort([III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object v1, v6

    move-object/from16 v77, v1

    goto :goto_16

    :catchall_5
    move-exception v0

    :goto_14
    move/from16 v78, v2

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move v4, v12

    move-object v9, v13

    move-object v5, v14

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-object/from16 v58, v67

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    :goto_15
    move/from16 v64, v10

    goto/16 :goto_2a

    :cond_1c
    move-object/from16 v77, v1

    :goto_16
    :try_start_8
    aget-object v1, v7, v0

    iget-object v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    move-object v9, v1

    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v1

    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v5

    move-object/from16 v42, v5

    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v5

    move-object/from16 v43, v5

    array-length v5, v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_13

    move-object/from16 v6, v67

    :try_start_9
    invoke-virtual {v6, v5}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    nop

    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->getNativePtr()J

    move-result-wide v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_12

    sub-int v22, v3, v4

    int-to-float v5, v15

    move/from16 v78, v2

    int-to-float v2, v11

    const/16 v27, 0x14

    move-object/from16 v79, v7

    :try_start_a
    iget v7, v13, Landroid/text/StaticLayout;->mLineCount:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_11

    move-object/from16 v81, v8

    move-object/from16 v80, v9

    move-object/from16 v9, v66

    :try_start_b
    iget-object v8, v9, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v8, v8

    move/from16 v82, v0

    iget-object v0, v9, Landroid/text/StaticLayout$LineBreaks;->breaks:[I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    move-object/from16 v83, v14

    :try_start_c
    iget-object v14, v9, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move/from16 v84, v11

    iget-object v11, v9, Landroid/text/StaticLayout$LineBreaks;->ascents:[F
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_f

    move/from16 v85, v10

    :try_start_d
    iget-object v10, v9, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    move/from16 v86, v15

    iget-object v15, v9, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    invoke-virtual {v6}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v36

    move-wide/from16 v17, v68

    move-object/from16 v19, v1

    move/from16 v23, v5

    move/from16 v24, v40

    move/from16 v25, v2

    move-object/from16 v26, v77

    move/from16 v28, v7

    move-object/from16 v29, v9

    move/from16 v30, v8

    move-object/from16 v31, v0

    move-object/from16 v32, v14

    move-object/from16 v33, v11

    move-object/from16 v34, v10

    move-object/from16 v35, v15

    invoke-static/range {v17 .. v36}, Landroid/text/StaticLayout;->nComputeLineBreaks(J[CJIFIF[IIILandroid/text/StaticLayout$LineBreaks;I[I[F[F[F[I[F)I

    move-result v0

    iget-object v2, v9, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v30, v2

    iget-object v2, v9, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v31, v2

    iget-object v2, v9, Landroid/text/StaticLayout$LineBreaks;->ascents:[F

    move-object/from16 v32, v2

    iget-object v2, v9, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    move-object/from16 v33, v2

    iget-object v2, v9, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v34, v2

    iget v2, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v5, v13, Landroid/text/StaticLayout;->mLineCount:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    sub-int v15, v2, v5

    move-object/from16 v14, v71

    if-eqz v14, :cond_1e

    :try_start_e
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v14, v2, :cond_1d

    iget v2, v13, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1e

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v14, v2, :cond_1e

    :cond_1d
    const/4 v2, 0x1

    goto :goto_17

    :catchall_6
    move-exception v0

    move-object/from16 v58, v6

    move-object/from16 v62, v9

    move v4, v12

    move-object v9, v13

    move-object/from16 v70, v14

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-wide/from16 v12, v68

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    move-object/from16 v56, v79

    move-object/from16 v59, v81

    move-object/from16 v5, v83

    move/from16 v64, v85

    goto/16 :goto_2a

    :cond_1e
    const/4 v2, 0x0

    :goto_17
    move/from16 v35, v2

    if-lez v15, :cond_23

    if-ge v15, v0, :cond_23

    if-eqz v35, :cond_23

    const/4 v2, 0x0

    const/4 v5, 0x0

    add-int/lit8 v7, v15, -0x1

    :goto_18
    if-ge v7, v0, :cond_22

    add-int/lit8 v8, v0, -0x1

    if-ne v7, v8, :cond_1f

    aget v8, v31, v7

    add-float/2addr v2, v8

    goto :goto_1a

    :cond_1f
    if-nez v7, :cond_20

    const/4 v8, 0x0

    goto :goto_19

    :cond_20
    add-int/lit8 v8, v7, -0x1

    aget v8, v30, v8

    :goto_19
    aget v10, v30, v7

    if-ge v8, v10, :cond_21

    invoke-virtual {v6, v8}, Landroid/text/AutoGrowArray$FloatArray;->get(I)F

    move-result v10

    add-float/2addr v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_21
    :goto_1a
    aget v8, v34, v7

    const/high16 v10, 0x20000000

    and-int/2addr v8, v10

    or-int/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_22
    add-int/lit8 v7, v15, -0x1

    add-int/lit8 v8, v0, -0x1

    aget v8, v30, v8

    aput v8, v30, v7

    add-int/lit8 v7, v15, -0x1

    aput v2, v31, v7

    add-int/lit8 v7, v15, -0x1

    aput v5, v34, v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move v0, v15

    :cond_23
    move v2, v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v18

    move/from16 v18, v11

    move v11, v10

    move v10, v8

    move v8, v7

    move v7, v5

    move v5, v2

    :goto_1b
    if-ge v2, v3, :cond_36

    add-int/lit8 v36, v17, 0x1

    :try_start_f
    aget v17, v42, v17

    move/from16 v87, v17

    mul-int/lit8 v17, v18, 0x4

    const/16 v20, 0x0

    add-int/lit8 v17, v17, 0x0

    move-object/from16 v88, v1

    aget v1, v43, v17
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    move-object/from16 v89, v9

    move-object/from16 v9, v64

    :try_start_10
    iput v1, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    mul-int/lit8 v1, v18, 0x4

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    aget v1, v43, v1

    iput v1, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-int/lit8 v1, v18, 0x4

    add-int/lit8 v1, v1, 0x2

    aget v1, v43, v1

    iput v1, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-int/lit8 v1, v18, 0x4

    add-int/lit8 v1, v1, 0x3

    aget v1, v43, v1

    iput v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/lit8 v44, v18, 0x1

    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    if-ge v1, v7, :cond_24

    :try_start_11
    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    move v7, v1

    goto :goto_1c

    :catchall_7
    move-exception v0

    move-object/from16 v58, v6

    move-object v2, v9

    move v4, v12

    move-object v9, v13

    move-object/from16 v70, v14

    move/from16 v57, v63

    move-wide/from16 v12, v68

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    move-object/from16 v56, v79

    move-object/from16 v59, v81

    move-object/from16 v5, v83

    move/from16 v64, v85

    move-object/from16 v62, v89

    goto/16 :goto_2a

    :cond_24
    :goto_1c
    :try_start_12
    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    if-ge v1, v10, :cond_25

    :try_start_13
    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move v10, v1

    :cond_25
    :try_start_14
    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    if-le v1, v11, :cond_26

    :try_start_15
    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move v11, v1

    :cond_26
    :try_start_16
    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    if-le v1, v8, :cond_27

    :try_start_17
    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v8, v1

    :cond_27
    move/from16 v1, v19

    :goto_1d
    if-ge v1, v0, :cond_28

    aget v18, v30, v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    move/from16 v90, v3

    add-int v3, v4, v18

    if-ge v3, v2, :cond_29

    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v90

    goto :goto_1d

    :cond_28
    move/from16 v90, v3

    :cond_29
    move/from16 v45, v5

    move/from16 v51, v7

    move/from16 v52, v8

    move v8, v11

    move v11, v1

    :goto_1e
    if-ge v11, v0, :cond_35

    :try_start_18
    aget v1, v30, v11

    add-int/2addr v1, v4

    move/from16 v7, v87

    if-gt v1, v7, :cond_34

    aget v1, v30, v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    add-int v3, v4, v1

    if-ge v3, v12, :cond_2a

    move/from16 v29, v17

    goto :goto_1f

    :cond_2a
    const/16 v29, 0x0

    :goto_1f
    if-eqz v46, :cond_2b

    :try_start_19
    aget v1, v32, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v5, v1

    goto :goto_20

    :cond_2b
    move v5, v10

    :goto_20
    if-eqz v46, :cond_2c

    aget v1, v33, v11

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto :goto_21

    :cond_2c
    move v1, v8

    :goto_21
    move/from16 v91, v8

    move-object v8, v6

    move v6, v1

    move/from16 v1, v63

    if-nez v11, :cond_2e

    move/from16 v93, v0

    move/from16 v92, v10

    move/from16 v10, v85

    move/from16 v0, v86

    if-eq v0, v10, :cond_2d

    move/from16 v94, v1

    sub-int v1, v10, v0

    int-to-float v1, v1

    sub-float v1, v63, v1

    move/from16 v95, v0

    move v0, v1

    move/from16 v1, v84

    goto :goto_24

    :cond_2d
    move/from16 v94, v1

    goto :goto_22

    :cond_2e
    move/from16 v93, v0

    move/from16 v94, v1

    move/from16 v92, v10

    move/from16 v10, v85

    move/from16 v0, v86

    :goto_22
    if-eqz v11, :cond_30

    move/from16 v1, v84

    if-eq v1, v10, :cond_2f

    move/from16 v95, v0

    sub-int v0, v10, v1

    int-to-float v0, v0

    sub-float v0, v63, v0

    goto :goto_24

    :cond_2f
    move/from16 v95, v0

    goto :goto_23

    :cond_30
    move/from16 v95, v0

    move/from16 v1, v84

    :goto_23
    move/from16 v0, v94

    :goto_24
    cmpg-float v18, v0, v37

    if-gez v18, :cond_31

    move/from16 v0, v63

    :cond_31
    :try_start_1a
    aget v18, v34, v11

    invoke-virtual {v8}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v23

    aget v27, v31, v11
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    move/from16 v19, v1

    move-object/from16 v53, v88

    move-object v1, v13

    move/from16 v54, v2

    move-object/from16 v2, v83

    move/from16 v97, v3

    move/from16 v96, v90

    move/from16 v3, v45

    move/from16 v55, v4

    move/from16 v4, v97

    move/from16 v98, v7

    move-object/from16 v56, v79

    move/from16 v7, v51

    move-object/from16 v58, v8

    move/from16 v57, v63

    move-object/from16 v59, v81

    move/from16 v61, v91

    move/from16 v8, v52

    move-object/from16 v100, v9

    move-object/from16 v99, v73

    move-object/from16 v63, v80

    move-object/from16 v62, v89

    move/from16 v9, v78

    move/from16 v64, v10

    move/from16 v65, v92

    move/from16 v10, v47

    move/from16 v67, v11

    move/from16 v66, v19

    move-object/from16 v101, v74

    move/from16 v11, v48

    move/from16 v102, v12

    move-object/from16 v12, v39

    move/from16 v103, v75

    move-object/from16 v13, v41

    move-object/from16 v70, v14

    move-object/from16 v104, v83

    move-object/from16 v14, v100

    move/from16 v72, v15

    move/from16 v73, v17

    move/from16 v71, v95

    move/from16 v15, v18

    move-object/from16 v17, v63

    move/from16 v18, v102

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, v49

    move-object/from16 v22, v53

    move/from16 v24, v55

    move-object/from16 v25, v70

    move/from16 v26, v0

    move-object/from16 v28, v101

    :try_start_1b
    invoke-direct/range {v1 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    move/from16 v78, v1

    move/from16 v4, v97

    move/from16 v1, v98

    if-ge v4, v1, :cond_32

    move-object/from16 v2, v100

    :try_start_1c
    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v7, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v9, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    move/from16 v51, v3

    move/from16 v52, v7

    move v10, v8

    move v8, v9

    const/4 v3, 0x0

    goto :goto_25

    :catchall_8
    move-exception v0

    move-wide/from16 v12, v68

    move-object/from16 v6, v99

    move-object/from16 v7, v101

    move/from16 v4, v102

    move/from16 v3, v103

    move-object/from16 v5, v104

    move-object/from16 v9, p0

    goto/16 :goto_2a

    :cond_32
    move-object/from16 v2, v100

    const/4 v3, 0x0

    move v7, v3

    move v8, v3

    move v9, v3

    move v10, v3

    move/from16 v52, v9

    move/from16 v51, v10

    move v10, v8

    move v8, v7

    :goto_25
    move/from16 v45, v4

    add-int/lit8 v11, v67, 0x1

    move-object/from16 v9, p0

    :try_start_1d
    iget v7, v9, Landroid/text/StaticLayout;->mLineCount:I

    iget v12, v9, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v7, v12, :cond_33

    iget-boolean v7, v9, Landroid/text/StaticLayout;->mEllipsized:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    if-eqz v7, :cond_33

    move-wide/from16 v12, v68

    invoke-static {v12, v13}, Landroid/text/StaticLayout;->nFinish(J)V

    return-void

    :cond_33
    move-wide/from16 v12, v68

    move/from16 v87, v1

    move-wide/from16 v68, v12

    move-object/from16 v88, v53

    move/from16 v4, v55

    move-object/from16 v79, v56

    move-object/from16 v6, v58

    move-object/from16 v81, v59

    move-object/from16 v89, v62

    move-object/from16 v80, v63

    move/from16 v85, v64

    move/from16 v84, v66

    move-object/from16 v14, v70

    move/from16 v86, v71

    move/from16 v15, v72

    move/from16 v17, v73

    move/from16 v0, v93

    move/from16 v90, v96

    move-object/from16 v73, v99

    move-object/from16 v74, v101

    move/from16 v12, v102

    move/from16 v75, v103

    move-object/from16 v83, v104

    move-object v13, v9

    move/from16 v63, v57

    move-object v9, v2

    move/from16 v2, v54

    goto/16 :goto_1e

    :catchall_9
    move-exception v0

    move-wide/from16 v12, v68

    move-object/from16 v6, v99

    move-object/from16 v7, v101

    move/from16 v4, v102

    move/from16 v3, v103

    move-object/from16 v5, v104

    goto/16 :goto_2a

    :catchall_a
    move-exception v0

    move-wide/from16 v12, v68

    move-object/from16 v2, v100

    move-object/from16 v9, p0

    move-object/from16 v6, v99

    move-object/from16 v7, v101

    move/from16 v4, v102

    move/from16 v3, v103

    move-object/from16 v5, v104

    goto/16 :goto_2a

    :catchall_b
    move-exception v0

    move-object/from16 v58, v8

    move-object v2, v9

    move/from16 v64, v10

    move/from16 v102, v12

    move-object v9, v13

    move-object/from16 v70, v14

    move/from16 v57, v63

    move-wide/from16 v12, v68

    move-object/from16 v56, v79

    move-object/from16 v59, v81

    move-object/from16 v62, v89

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    move-object/from16 v5, v83

    move/from16 v4, v102

    goto/16 :goto_2a

    :cond_34
    move/from16 v93, v0

    move/from16 v54, v2

    move/from16 v55, v4

    move-object/from16 v58, v6

    move v1, v7

    move/from16 v61, v8

    move-object v2, v9

    move/from16 v65, v10

    move/from16 v67, v11

    move/from16 v102, v12

    move-object v9, v13

    move-object/from16 v70, v14

    move/from16 v72, v15

    move/from16 v57, v63

    move-wide/from16 v12, v68

    move-object/from16 v99, v73

    move-object/from16 v101, v74

    move/from16 v103, v75

    move-object/from16 v56, v79

    move-object/from16 v63, v80

    move-object/from16 v59, v81

    move-object/from16 v104, v83

    move/from16 v66, v84

    move/from16 v64, v85

    move/from16 v71, v86

    move-object/from16 v53, v88

    move-object/from16 v62, v89

    move/from16 v96, v90

    const/4 v3, 0x0

    move/from16 v73, v17

    goto :goto_26

    :cond_35
    move/from16 v93, v0

    move/from16 v54, v2

    move/from16 v55, v4

    move-object/from16 v58, v6

    move/from16 v61, v8

    move-object v2, v9

    move/from16 v65, v10

    move/from16 v67, v11

    move/from16 v102, v12

    move-object v9, v13

    move-object/from16 v70, v14

    move/from16 v72, v15

    move/from16 v57, v63

    move-wide/from16 v12, v68

    move-object/from16 v99, v73

    move-object/from16 v101, v74

    move/from16 v103, v75

    move-object/from16 v56, v79

    move-object/from16 v63, v80

    move-object/from16 v59, v81

    move-object/from16 v104, v83

    move/from16 v66, v84

    move/from16 v64, v85

    move/from16 v71, v86

    move/from16 v1, v87

    move-object/from16 v53, v88

    move-object/from16 v62, v89

    move/from16 v96, v90

    const/4 v3, 0x0

    move/from16 v73, v17

    :goto_26
    move v0, v1

    move-wide/from16 v68, v12

    move/from16 v17, v36

    move/from16 v18, v44

    move/from16 v5, v45

    move/from16 v7, v51

    move/from16 v8, v52

    move-object/from16 v1, v53

    move/from16 v4, v55

    move-object/from16 v79, v56

    move-object/from16 v6, v58

    move-object/from16 v81, v59

    move/from16 v11, v61

    move-object/from16 v80, v63

    move/from16 v85, v64

    move/from16 v10, v65

    move/from16 v84, v66

    move/from16 v19, v67

    move-object/from16 v14, v70

    move/from16 v86, v71

    move/from16 v15, v72

    move/from16 v3, v96

    move-object/from16 v73, v99

    move-object/from16 v74, v101

    move/from16 v12, v102

    move/from16 v75, v103

    move-object/from16 v83, v104

    move-object/from16 v64, v2

    move-object v13, v9

    move/from16 v63, v57

    move-object/from16 v9, v62

    move v2, v0

    move/from16 v0, v93

    goto/16 :goto_1b

    :catchall_c
    move-exception v0

    move-object/from16 v58, v6

    move-object v2, v9

    move/from16 v102, v12

    move-object v9, v13

    move-object/from16 v70, v14

    move/from16 v57, v63

    move-wide/from16 v12, v68

    move-object/from16 v56, v79

    move-object/from16 v59, v81

    move/from16 v64, v85

    move-object/from16 v62, v89

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    move-object/from16 v5, v83

    move/from16 v4, v102

    goto/16 :goto_2a

    :catchall_d
    move-exception v0

    move-object/from16 v58, v6

    move-object/from16 v62, v9

    move/from16 v102, v12

    move-object v9, v13

    move-object/from16 v70, v14

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-wide/from16 v12, v68

    move-object/from16 v56, v79

    move-object/from16 v59, v81

    move/from16 v64, v85

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    move-object/from16 v5, v83

    move/from16 v4, v102

    goto/16 :goto_2a

    :cond_36
    move/from16 v93, v0

    move-object/from16 v53, v1

    move/from16 v96, v3

    move/from16 v55, v4

    move-object/from16 v58, v6

    move-object/from16 v62, v9

    move/from16 v102, v12

    move-object v9, v13

    move-object/from16 v70, v14

    move/from16 v72, v15

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-wide/from16 v12, v68

    move-object/from16 v99, v73

    move-object/from16 v101, v74

    move/from16 v103, v75

    move-object/from16 v56, v79

    move-object/from16 v63, v80

    move-object/from16 v59, v81

    move-object/from16 v104, v83

    move/from16 v66, v84

    move/from16 v64, v85

    move/from16 v71, v86

    const/4 v3, 0x0

    const/16 v73, 0x1

    move/from16 v0, v96

    move/from16 v4, v102

    if-ne v0, v4, :cond_37

    nop

    move-object/from16 v1, v41

    goto/16 :goto_27

    :cond_37
    add-int/lit8 v0, v82, 0x1

    move-wide/from16 v68, v12

    move-object/from16 v1, v41

    move-object/from16 v7, v56

    move/from16 v63, v57

    move-object/from16 v67, v58

    move-object/from16 v8, v59

    move-object/from16 v66, v62

    move/from16 v10, v64

    move-object/from16 v71, v70

    move/from16 v15, v73

    move-object/from16 v9, v99

    move-object/from16 v11, v101

    move/from16 v13, v103

    move-object/from16 v14, v104

    move-object/from16 v64, v2

    move v12, v4

    move/from16 v2, v78

    goto/16 :goto_d

    :catchall_e
    move-exception v0

    move-object/from16 v58, v6

    move-object/from16 v62, v9

    move v4, v12

    move-object v9, v13

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v56, v79

    move-object/from16 v59, v81

    move/from16 v64, v85

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    move-object/from16 v5, v83

    goto/16 :goto_2a

    :catchall_f
    move-exception v0

    move-object/from16 v58, v6

    move-object/from16 v62, v9

    move v4, v12

    move-object v9, v13

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v56, v79

    move-object/from16 v59, v81

    move/from16 v64, v10

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    move-object/from16 v5, v83

    goto/16 :goto_2a

    :catchall_10
    move-exception v0

    move-object/from16 v58, v6

    move-object/from16 v62, v9

    move v4, v12

    move-object v9, v13

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v56, v79

    move-object/from16 v59, v81

    move/from16 v64, v10

    move-object v5, v14

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    goto/16 :goto_2a

    :catchall_11
    move-exception v0

    move-object/from16 v58, v6

    move-object/from16 v59, v8

    move v4, v12

    move-object v9, v13

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v56, v79

    move/from16 v64, v10

    move-object v5, v14

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    goto/16 :goto_2a

    :catchall_12
    move-exception v0

    move/from16 v78, v2

    move-object/from16 v58, v6

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move v4, v12

    move-object v9, v13

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move/from16 v64, v10

    move-object v5, v14

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    goto/16 :goto_2a

    :catchall_13
    move-exception v0

    move/from16 v78, v2

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move v4, v12

    move-object v9, v13

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-object/from16 v58, v67

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move/from16 v64, v10

    move-object v5, v14

    move-object/from16 v6, v73

    move-object/from16 v7, v74

    move/from16 v3, v75

    goto/16 :goto_2a

    :catchall_14
    move-exception v0

    move/from16 v78, v2

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move-object/from16 v99, v9

    move v4, v12

    move/from16 v103, v13

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-object/from16 v58, v67

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v9, p0

    move/from16 v64, v10

    move-object/from16 v41, v1

    move-object v7, v11

    move-object v5, v14

    move-object/from16 v6, v99

    move/from16 v3, v103

    goto/16 :goto_2a

    :cond_38
    move/from16 v78, v2

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move-object/from16 v99, v9

    move-object/from16 v101, v11

    move v4, v12

    move/from16 v103, v13

    move-object/from16 v104, v14

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-object/from16 v58, v67

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v9, p0

    move/from16 v64, v10

    :goto_27
    move/from16 v3, v103

    if-eq v4, v3, :cond_3a

    add-int/lit8 v0, v4, -0x1

    move-object/from16 v5, v104

    :try_start_1e
    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    const/16 v6, 0xa

    if-ne v0, v6, :cond_39

    goto :goto_28

    :cond_39
    move-object/from16 v6, v99

    move-object/from16 v7, v101

    goto/16 :goto_29

    :catchall_15
    move-exception v0

    move-object/from16 v41, v1

    move-object/from16 v6, v99

    move-object/from16 v7, v101

    goto/16 :goto_2a

    :cond_3a
    move-object/from16 v5, v104

    :goto_28
    :try_start_1f
    iget v0, v9, Landroid/text/StaticLayout;->mLineCount:I

    iget v6, v9, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_18

    if-ge v0, v6, :cond_3b

    nop

    move-object/from16 v6, v99

    const/4 v0, 0x0

    :try_start_20
    invoke-static {v5, v4, v4, v6, v0}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v33
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_17

    move-object/from16 v7, v101

    :try_start_21
    invoke-virtual {v7, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget v0, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v8, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v10, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v11, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    move-object/from16 v17, v9

    move-object/from16 v18, v5

    move/from16 v19, v4

    move/from16 v20, v4

    move/from16 v21, v0

    move/from16 v22, v8

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v78

    move/from16 v26, v47

    move/from16 v27, v48

    move-object/from16 v30, v2

    move/from16 v32, v16

    move/from16 v34, v4

    move/from16 v35, p2

    move/from16 v36, p3

    move/from16 v37, v49

    move/from16 v40, v3

    move-object/from16 v41, v70

    move/from16 v42, v57

    move-object/from16 v44, v7

    invoke-direct/range {v17 .. v45}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_16

    move/from16 v78, v0

    goto :goto_29

    :catchall_16
    move-exception v0

    move-object/from16 v41, v1

    goto :goto_2a

    :catchall_17
    move-exception v0

    move-object/from16 v7, v101

    move-object/from16 v41, v1

    goto :goto_2a

    :cond_3b
    move-object/from16 v6, v99

    move-object/from16 v7, v101

    :goto_29
    invoke-static {v12, v13}, Landroid/text/StaticLayout;->nFinish(J)V

    nop

    return-void

    :catchall_18
    move-exception v0

    move-object/from16 v6, v99

    move-object/from16 v7, v101

    move-object/from16 v41, v1

    goto :goto_2a

    :catchall_19
    move-exception v0

    move/from16 v78, v2

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move-object v6, v9

    move-object v7, v11

    move v4, v12

    move v3, v13

    move-object v5, v14

    move/from16 v57, v63

    move-object/from16 v2, v64

    move-object/from16 v62, v66

    move-object/from16 v58, v67

    move-wide/from16 v12, v68

    move-object/from16 v70, v71

    move-object/from16 v9, p0

    move/from16 v64, v10

    move-object/from16 v41, v1

    :goto_2a
    invoke-static {v12, v13}, Landroid/text/StaticLayout;->nFinish(J)V

    throw v0

    :cond_3c
    move-object/from16 v50, v6

    move-object/from16 v70, v7

    move/from16 v57, v8

    move-object v6, v9

    move/from16 v64, v10

    move-object v7, v11

    move v4, v12

    move v3, v13

    move-object v5, v14

    move-object v9, v15

    :goto_2b
    invoke-direct/range {p0 .. p3}, Landroid/text/StaticLayout;->generateForCJK(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight(Z)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_0

    const-string v1, "StaticLayout"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "StaticLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lineCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHyphen(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    neg-int v0, v0

    return v0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_4
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled alignment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLineExtra(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getLineForVertical(I)I
    .locals 6

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    :goto_0
    sub-int v3, v0, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v0, v1

    shr-int/2addr v3, v4

    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v2, v5

    if-le v4, p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v3, 0x0

    return v3

    :cond_2
    return v1
.end method

.method public getLineStart(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
