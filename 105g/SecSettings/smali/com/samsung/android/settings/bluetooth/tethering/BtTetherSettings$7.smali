.class Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$7;
.super Ljava/lang/Object;
.source "BtTetherSettings.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$7;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$7;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1102(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings$7;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;->access$1102(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherSettings;Z)Z

    :goto_0
    return-void
.end method
