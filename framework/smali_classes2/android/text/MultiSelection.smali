.class public Landroid/text/MultiSelection;
.super Ljava/lang/Object;
.source "MultiSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MultiSelection$END;,
        Landroid/text/MultiSelection$START;
    }
.end annotation


# static fields
.field public static final CURRENT_SELECTION_END:Ljava/lang/Object;

.field public static final CURRENT_SELECTION_START:Ljava/lang/Object;

.field private static mHoveredIcon:I

.field private static mIsSelecting:Z

.field private static mIsTextViewHovered:Z

.field private static mNeedToScroll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/MultiSelection$START;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$1;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    new-instance v0, Landroid/text/MultiSelection$END;

    invoke-direct {v0, v1}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$1;)V

    sput-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/text/MultiSelection;->mIsSelecting:Z

    sput-boolean v0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    sput-boolean v0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    const/4 v0, -0x1

    sput v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addMultiSelection(Landroid/text/Spannable;II)V
    .locals 3

    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/text/MultiSelection$START;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/MultiSelection$START;-><init>(Landroid/text/MultiSelection$1;)V

    new-instance v2, Landroid/text/MultiSelection$END;

    invoke-direct {v2, v1}, Landroid/text/MultiSelection$END;-><init>(Landroid/text/MultiSelection$1;)V

    move-object v1, v2

    const/16 v2, 0x222

    invoke-interface {p0, v0, p1, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/16 v2, 0x22

    invoke-interface {p0, v1, p2, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static final clearMultiSelection(Landroid/text/Spannable;)V
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$START;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v3, Landroid/text/MultiSelection$END;

    invoke-interface {p0, v2, v1, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    nop

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v3, v1, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final getHoveredIcon()I
    .locals 1

    sget v0, Landroid/text/MultiSelection;->mHoveredIcon:I

    return v0
.end method

.method public static final getIsMultiSelectingText()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mIsSelecting:Z

    return v0
.end method

.method public static final getMultiSelectionCount(Landroid/text/Spannable;)I
    .locals 3

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$START;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    array-length v1, v0

    return v1
.end method

.method public static final getMultiSelectionEnd(Landroid/text/Spannable;)[I
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$END;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$END;

    array-length v1, v0

    new-array v1, v1, [I

    nop

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final getMultiSelectionStart(Landroid/text/Spannable;)[I
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/MultiSelection$START;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    array-length v1, v0

    new-array v1, v1, [I

    nop

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 2

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 2

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static final isNeedToScroll()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    return v0
.end method

.method public static final isTextViewHovered()Z
    .locals 1

    sget-boolean v0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    return v0
.end method

.method public static final removeCurSelection(Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static final removeMultiSelection(Landroid/text/Spannable;II)Z
    .locals 6

    const-class v0, Landroid/text/MultiSelection$START;

    invoke-interface {p0, p1, p1, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/MultiSelection$START;

    const-class v1, Landroid/text/MultiSelection$END;

    invoke-interface {p0, p2, p2, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/MultiSelection$END;

    const/4 v2, 0x1

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    aget-object v3, v0, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ne v3, v5, :cond_1

    aget-object v3, v1, v4

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static final setIsMultiSelectingText(Z)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mIsSelecting:Z

    return-void
.end method

.method public static final setNeedToScroll(Z)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mNeedToScroll:Z

    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-eq v1, v2, :cond_13

    if-ltz v1, :cond_13

    if-gez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static/range {p0 .. p0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v14

    const/4 v15, 0x0

    if-lez v1, :cond_1

    if-lt v1, v14, :cond_2

    :cond_1
    if-lez v2, :cond_c

    if-ge v2, v14, :cond_c

    :cond_2
    const/4 v5, 0x0

    if-lez v1, :cond_5

    if-ge v1, v14, :cond_5

    invoke-interface/range {p0 .. p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const/4 v5, 0x1

    :cond_5
    :goto_0
    if-lez v2, :cond_8

    if-ge v2, v14, :cond_8

    invoke-interface {v0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-nez v5, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isKhmerChar(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isMyanmarChar(C)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isLaoChar(C)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    const/4 v5, 0x1

    :cond_8
    :goto_1
    move/from16 v16, v2

    move v2, v5

    if-eqz v2, :cond_b

    new-array v13, v14, [F

    new-array v12, v14, [C

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v0, v15, v14, v12, v15}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object v6, v12

    move v8, v14

    move v10, v14

    move-object/from16 v18, v12

    move-object v12, v13

    move-object/from16 v19, v13

    move/from16 v13, v17

    invoke-virtual/range {v5 .. v13}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    :goto_2
    const/16 v6, 0xa

    const/4 v7, 0x0

    if-ge v1, v14, :cond_9

    aget v8, v19, v1

    cmpl-float v8, v8, v7

    if-nez v8, :cond_9

    aget-char v8, v18, v1

    if-eq v8, v6, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    move/from16 v8, v16

    :goto_3
    if-ge v8, v14, :cond_a

    aget v9, v19, v8

    cmpl-float v9, v9, v7

    if-nez v9, :cond_a

    aget-char v9, v18, v8

    if-eq v9, v6, :cond_a

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    move v2, v8

    goto :goto_4

    :cond_b
    move/from16 v2, v16

    :cond_c
    :goto_4
    if-ne v3, v1, :cond_d

    if-eq v4, v2, :cond_12

    :cond_d
    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/text/MultiSelection$START;

    invoke-interface {v0, v15, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/MultiSelection$START;

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/MultiSelection$END;

    invoke-interface {v0, v15, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/MultiSelection$END;

    nop

    :goto_5
    move v7, v15

    array-length v8, v5

    if-ge v7, v8, :cond_11

    aget-object v8, v5, v7

    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    aget-object v9, v6, v7

    invoke-interface {v0, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    if-gt v8, v1, :cond_e

    if-lt v1, v9, :cond_f

    :cond_e
    if-ge v8, v2, :cond_10

    if-gt v2, v9, :cond_10

    :cond_f
    aget-object v10, v5, v7

    invoke-interface {v0, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    aget-object v10, v6, v7

    invoke-interface {v0, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_10
    add-int/lit8 v15, v7, 0x1

    goto :goto_5

    :cond_11
    sget-object v7, Landroid/text/MultiSelection;->CURRENT_SELECTION_START:Ljava/lang/Object;

    const/16 v8, 0x222

    invoke-interface {v0, v7, v1, v1, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object v7, Landroid/text/MultiSelection;->CURRENT_SELECTION_END:Ljava/lang/Object;

    const/16 v8, 0x22

    invoke-interface {v0, v7, v2, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_12
    return-void

    :cond_13
    :goto_6
    return-void
.end method

.method public static final setTextViewHovered(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/text/MultiSelection;->setTextViewHovered(ZI)V

    return-void
.end method

.method public static final setTextViewHovered(ZI)V
    .locals 0

    sput-boolean p0, Landroid/text/MultiSelection;->mIsTextViewHovered:Z

    sput p1, Landroid/text/MultiSelection;->mHoveredIcon:I

    return-void
.end method
