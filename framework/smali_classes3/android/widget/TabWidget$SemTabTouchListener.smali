.class Landroid/widget/TabWidget$SemTabTouchListener;
.super Ljava/lang/Object;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemTabTouchListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Landroid/widget/TabWidget;


# direct methods
.method private constructor <init>(Landroid/widget/TabWidget;I)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/widget/TabWidget$SemTabTouchListener;->mTabIndex:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget$SemTabTouchListener;-><init>(Landroid/widget/TabWidget;I)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v0}, Landroid/widget/TabWidget;->access$300(Landroid/widget/TabWidget;)I

    move-result v0

    iget v1, p0, Landroid/widget/TabWidget$SemTabTouchListener;->mTabIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0x10204d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemTabDotLineView;

    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v6, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->access$300(Landroid/widget/TabWidget;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_2

    return v2

    :cond_2
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemTabDotLineView;

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v1, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v1, v7}, Lcom/samsung/android/widget/SemTabDotLineView;->setSelected(Z)V

    iput-boolean v7, v1, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    iget-object v8, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v8}, Landroid/widget/TabWidget;->access$400(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const-string/jumbo v8, "sec-roboto-light"

    invoke-static {v8, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    iget-object v8, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v8}, Landroid/widget/TabWidget;->access$400(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/widget/TabWidget;->access$500(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v7, "sec-roboto-light"

    invoke-static {v7, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTabDotLineView;->setDrawState(Z)V

    iget-object v8, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    iget-object v9, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v9}, Landroid/widget/TabWidget;->access$400(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/widget/TabWidget;->access$500(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v8, "sec-roboto-light"

    invoke-static {v8, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    iget-object v9, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v9}, Landroid/widget/TabWidget;->access$400(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/widget/TabWidget;->access$600(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v8, "sec-roboto-light"

    invoke-static {v8, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    nop

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    return v2

    :cond_6
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
