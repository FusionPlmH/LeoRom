.class Lcom/android/settings/IccLockSettings$7;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->tabWidgetEnabler(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    iput-boolean p2, p0, Lcom/android/settings/IccLockSettings$7;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1500(Lcom/android/settings/IccLockSettings;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1500(Lcom/android/settings/IccLockSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1600(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings$7;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    :cond_0
    return-void
.end method
