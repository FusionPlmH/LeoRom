.class Landroid/widget/TextView$StylusEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private mDirLTR:Z

.field private mEndCurPosition:I

.field private mIsSelectableTextView:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartCurPosition:I

.field private mStartX:F

.field private mStartY:F

.field private mThisView:Landroid/widget/TextView;

.field private oldEndPos:I

.field private selectRange:[I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mDirLTR:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iput-boolean p1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$3700(Landroid/widget/TextView$StylusEventListener;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return v0
.end method

.method static synthetic access$3702(Landroid/widget/TextView$StylusEventListener;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    return p1
.end method

.method static synthetic access$3800(Landroid/widget/TextView$StylusEventListener;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return v0
.end method

.method static synthetic access$3802(Landroid/widget/TextView$StylusEventListener;I)I
    .locals 0

    iput p1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    return p1
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->access$1800(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_2

    :cond_1
    const/16 v6, 0xd3

    if-ne v0, v6, :cond_c

    :cond_2
    invoke-static {}, Landroid/widget/TextView;->access$1900()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Landroid/widget/TextView;->access$2000()Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/widget/TextView;->access$2000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->clearMultiSelection()Z

    invoke-static {v4}, Landroid/widget/TextView;->access$2002(Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_3
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->access$2100(Landroid/widget/TextView;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/widget/TextView;->access$2202(J)J

    invoke-static {}, Landroid/widget/TextView;->access$2300()Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/widget/TextView;->access$2200()J

    move-result-wide v6

    invoke-static {}, Landroid/widget/TextView;->access$2400()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x64

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    invoke-static {}, Landroid/widget/TextView;->access$2300()Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v6}, Landroid/widget/TextView;->access$2002(Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_4
    invoke-static {v4}, Landroid/widget/TextView;->access$2302(Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->access$1902(Z)Z

    :cond_5
    invoke-static {}, Landroid/widget/TextView;->access$1900()Z

    move-result v6

    if-ne v6, v5, :cond_7

    invoke-static {}, Landroid/widget/TextView;->access$2000()Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-nez v6, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Landroid/widget/TextView;->access$2000()Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    if-eq v6, v7, :cond_8

    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->hideCursorControllers()V

    return-void

    :cond_8
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->access$2500(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/widget/TextView;->access$2500(Landroid/widget/TextView;)Landroid/widget/TextView$Marquee;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v6

    if-nez v6, :cond_9

    return-void

    :cond_9
    invoke-static {}, Landroid/widget/TextView;->access$2000()Landroid/widget/TextView;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_b

    invoke-static {}, Landroid/widget/TextView;->access$2000()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->hideCursorControllers()V

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v7, v2

    float-to-int v8, v3

    invoke-static {v6, v7, v8, v1}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;III)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->canSelectText()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_a
    return-void

    :cond_b
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v7, v2

    float-to-int v8, v3

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v6, v7, v8, v9}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;III)Z

    move-result v6

    if-nez v6, :cond_d

    return-void

    :cond_c
    invoke-static {v1}, Landroid/widget/TextView;->access$1902(Z)Z

    iget-boolean v6, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v6, :cond_34

    invoke-static {}, Landroid/widget/TextView;->access$2000()Landroid/widget/TextView;

    move-result-object v6

    if-nez v6, :cond_d

    goto/16 :goto_a

    :cond_d
    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    return-void

    :cond_e
    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_9

    :pswitch_0
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v4, Landroid/widget/TextView;->mIsTouchDown:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iget-boolean v4, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v4, :cond_10

    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object v4, v6

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object v7, v6

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v7

    if-lez v7, :cond_f

    move v1, v5

    nop

    :cond_f
    invoke-static {v4, v1}, Landroid/widget/TextView;->access$3602(Landroid/widget/TextView;Z)Z

    goto/16 :goto_9

    :cond_10
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4, v1}, Landroid/widget/TextView;->access$3602(Landroid/widget/TextView;Z)Z

    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v1, :cond_33

    move-object v1, v6

    check-cast v1, Landroid/text/Spannable;

    iget v4, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-static {v1, v4}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_9

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_1a

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;)Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v4, v7}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v4

    iget v7, v4, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float v7, v2, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float v8, v3, v8

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    float-to-int v10, v2

    float-to-int v11, v3

    invoke-static {v9, v10, v11, v1}, Landroid/widget/TextView;->access$2600(Landroid/widget/TextView;III)Z

    move-result v9

    invoke-static {v9}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_11

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    :cond_11
    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v9

    iput v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-boolean v9, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v9, :cond_13

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v10, v10, v1

    if-ge v9, v10, :cond_12

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v1, v9, v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_0

    :cond_12
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v9, v9, v5

    if-le v1, v9, :cond_13

    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v1, v1, v5

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_13
    :goto_0
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v1, v9, :cond_14

    iget-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v1, :cond_33

    move-object v1, v6

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    goto/16 :goto_9

    :cond_14
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-eq v1, v9, :cond_19

    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v1, :cond_19

    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/widget/TextView;->access$3502(Landroid/widget/TextView;Z)Z

    iget-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v1, :cond_17

    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v1, v9, :cond_15

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    :cond_15
    iget v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-le v1, v9, :cond_16

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_16
    move-object v1, v6

    check-cast v1, Landroid/text/Spannable;

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v1, v9, v10}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v1, v5}, Landroid/widget/TextView;->access$3602(Landroid/widget/TextView;Z)Z

    goto :goto_1

    :cond_17
    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    :cond_18
    move-object v1, v6

    check-cast v1, Landroid/text/Spannable;

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v1, v5, v9}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    :cond_19
    :goto_1
    goto/16 :goto_9

    :cond_1a
    :pswitch_2
    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v7, v8}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float v8, v2, v8

    iget v9, v7, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float v9, v3, v9

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1b

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    sub-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iput v10, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    :cond_1b
    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    iput v10, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-boolean v10, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v10, :cond_1d

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v11, v11, v1

    if-ge v10, v11, :cond_1c

    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v10, v10, v1

    iput v10, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    goto :goto_2

    :cond_1c
    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v11, v11, v5

    if-le v10, v11, :cond_1d

    iget-object v10, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v10, v10, v5

    iput v10, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_1d
    :goto_2
    const/4 v10, 0x0

    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v11}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v11

    if-eqz v11, :cond_1f

    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v11

    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v12

    if-ne v11, v12, :cond_1e

    move v11, v5

    goto :goto_3

    :cond_1e
    move v11, v1

    :goto_3
    move v10, v11

    :cond_1f
    iget-boolean v11, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v11, :cond_21

    if-eqz v10, :cond_21

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget-object v12, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v12}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_21

    invoke-static {}, Landroid/widget/TextView;->access$3300()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->access$3300()Ljava/lang/Runnable;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v4}, Landroid/widget/TextView;->access$3302(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_20
    new-instance v4, Landroid/widget/TextView$StylusEventListener$1;

    invoke-direct {v4, p0}, Landroid/widget/TextView$StylusEventListener$1;-><init>(Landroid/widget/TextView$StylusEventListener;)V

    invoke-static {v4}, Landroid/widget/TextView;->access$3302(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->access$3300()Ljava/lang/Runnable;

    move-result-object v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v4, v5, v11, v12}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v4, Landroid/widget/TextView;->mIsTouchDown:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_9

    :cond_21
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    iget v4, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ne v4, v11, :cond_24

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iget-boolean v4, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v4, :cond_23

    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    move-object v4, v6

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->removeCurSelection(Landroid/text/Spannable;)V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    move-object v11, v6

    check-cast v11, Landroid/text/Spannable;

    invoke-static {v11}, Landroid/text/MultiSelection;->getMultiSelectionCount(Landroid/text/Spannable;)I

    move-result v11

    if-lez v11, :cond_22

    move v1, v5

    nop

    :cond_22
    invoke-static {v4, v1}, Landroid/widget/TextView;->access$3602(Landroid/widget/TextView;Z)Z

    goto/16 :goto_9

    :cond_23
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4, v1}, Landroid/widget/TextView;->access$3602(Landroid/widget/TextView;Z)Z

    goto/16 :goto_9

    :cond_24
    iget v4, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-le v4, v11, :cond_25

    iget v4, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    iput v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput v4, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    :cond_25
    iget-boolean v4, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v4, :cond_26

    move-object v4, v6

    check-cast v4, Landroid/text/Spannable;

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v4, v11, v12}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->access$4000(Landroid/widget/TextView;)V

    :try_start_0
    new-instance v4, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;

    iget-object v11, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;-><init>(Landroid/content/Context;)V

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v12, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-interface {v6, v11, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v4

    const-string v11, "TextView"

    const-string v12, "** skip SemInfoExtractionManager Service by IllegalStateException **"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v4, "TextView"

    const-string v11, "Pen up with side button! : end text selection"

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4, v5}, Landroid/widget/TextView;->access$3602(Landroid/widget/TextView;Z)Z

    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    goto :goto_5

    :cond_26
    iget v4, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v4, :cond_28

    iget v4, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    if-ltz v4, :cond_28

    invoke-static {}, Landroid/widget/TextView;->access$4100()Z

    move-result v4

    if-eqz v4, :cond_28

    move-object v4, v6

    check-cast v4, Landroid/text/Spannable;

    iget v5, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v11, p0, Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I

    invoke-static {v4, v5, v11}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v4

    if-eqz v4, :cond_27

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v4

    iget-boolean v4, v4, Landroid/widget/Editor;->mCreatedWithASelection:Z

    if-eqz v4, :cond_27

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor;->stopTextActionMode()V

    :cond_27
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v4

    if-eqz v4, :cond_28

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/Editor;->startSelectionActionModeAsync(Z)V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/widget/TextView;->access$100(Landroid/widget/TextView;)Landroid/widget/Editor;

    move-result-object v4

    iput-boolean v1, v4, Landroid/widget/Editor;->mCreatedWithASelection:Z

    :cond_28
    :goto_5
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v1, v4, Landroid/widget/TextView;->mIsTouchDown:Z

    iput-boolean v1, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    goto/16 :goto_9

    :pswitch_3
    iget-boolean v7, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    if-eqz v7, :cond_29

    goto/16 :goto_9

    :cond_29
    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)V

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v7

    if-nez v7, :cond_2b

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    instance-of v7, v7, Landroid/widget/EditText;

    if-eqz v7, :cond_2a

    goto :goto_6

    :cond_2a
    move v7, v1

    goto :goto_7

    :cond_2b
    :goto_6
    move v7, v5

    :goto_7
    iput-boolean v7, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    iget-object v7, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {v7, v8}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float v8, v2, v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget v8, v7, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float v8, v3, v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mMaxX:F

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget v9, p0, Landroid/widget/TextView$StylusEventListener;->mStartX:F

    iget v10, p0, Landroid/widget/TextView$StylusEventListener;->mStartY:F

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v8

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    if-ltz v8, :cond_32

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;)Z

    move-result v8

    if-eqz v8, :cond_31

    iget-boolean v8, p0, Landroid/widget/TextView$StylusEventListener;->mIsSelectableTextView:Z

    if-nez v8, :cond_31

    invoke-static {}, Landroid/widget/TextView;->access$2200()J

    move-result-wide v8

    invoke-static {}, Landroid/widget/TextView;->access$3200()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_2d

    invoke-static {}, Landroid/widget/TextView;->access$3300()Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_2c

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener;->mThisView:Landroid/widget/TextView;

    invoke-static {}, Landroid/widget/TextView;->access$3300()Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {v4}, Landroid/widget/TextView;->access$3302(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_2c
    invoke-static {v1}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    invoke-static {}, Landroid/widget/TextView;->access$2200()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/widget/TextView;->access$3202(J)J

    goto :goto_9

    :cond_2d
    invoke-static {v5}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->getVisibleTextRange([I)Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aput v1, v8, v1

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    aput v9, v8, v5

    :cond_2e
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v9, v9, v1

    if-ge v8, v9, :cond_2f

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v8, v8, v1

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    goto :goto_8

    :cond_2f
    iget v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iget-object v9, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v9, v9, v5

    if-le v8, v9, :cond_30

    iget-object v8, p0, Landroid/widget/TextView$StylusEventListener;->selectRange:[I

    aget v8, v8, v5

    iput v8, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    :cond_30
    :goto_8
    invoke-static {}, Landroid/widget/TextView;->access$2200()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/widget/TextView;->access$3202(J)J

    const-string v8, "TextView"

    const-string v9, "Pen down with side button! : start text selection"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget v4, p0, Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I

    iput v4, p0, Landroid/widget/TextView$StylusEventListener;->oldEndPos:I

    iput-boolean v5, p0, Landroid/widget/TextView$StylusEventListener;->mPressed:Z

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iput-boolean v5, v4, Landroid/widget/TextView;->mIsTouchDown:Z

    :cond_32
    invoke-static {v1}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    nop

    :cond_33
    :goto_9
    return-void

    :cond_34
    :goto_a
    return-void

    :cond_35
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
