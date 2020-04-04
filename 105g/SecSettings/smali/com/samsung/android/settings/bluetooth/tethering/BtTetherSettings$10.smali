.class Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$10;
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

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$10;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$10;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1100(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$10;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1000(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$10;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1200(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
