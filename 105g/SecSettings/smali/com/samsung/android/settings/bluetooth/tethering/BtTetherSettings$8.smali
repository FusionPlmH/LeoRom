.class Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;
.super Ljava/lang/Object;
.source "BtTetherSettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->setAppbarLayoutListener(Landroid/support/design/widget/AppBarLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1200(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1300(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1400(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)F

    move-result v4

    sub-float/2addr v0, v4

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1300(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1400(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)F

    move-result v4

    sub-float/2addr v0, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1402(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1302(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1400(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1402(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1302(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1400(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v0, v4}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1302(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1300(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)F

    move-result v0

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1000(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1100(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1200(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1302(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1402(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    return v1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1300(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)F

    move-result v0

    const/high16 v4, -0x3ee00000    # -10.0f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1100(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1200(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1302(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1402(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    return v1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1402(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$8;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1302(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;F)F

    :cond_7
    :goto_0
    return v2
.end method
