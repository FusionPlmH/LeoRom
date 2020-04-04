.class Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;
.super Ljava/lang/Object;
.source "DataUsageFeatureProviderImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->makeMDODisablePopup(Landroid/content/Context;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isDownloadBoostOn:Z

.field final synthetic val$isMPTCPOn:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;ZLandroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;->this$0:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    iput-boolean p2, p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;->val$isMPTCPOn:Z

    iput-object p3, p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;->val$isDownloadBoostOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;->val$isMPTCPOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;->this$0:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->access$000(Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;Landroid/content/Context;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;->val$isDownloadBoostOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "smart_bonding"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "urspservice"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrspManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/UrspManager;->setUrspMode(IZ)V

    return-void
.end method
