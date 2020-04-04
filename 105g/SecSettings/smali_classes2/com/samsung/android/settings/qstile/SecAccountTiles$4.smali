.class Lcom/samsung/android/settings/qstile/SecAccountTiles$4;
.super Ljava/lang/Object;
.source "SecAccountTiles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/qstile/SecAccountTiles;->showConfirmPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/qstile/SecAccountTiles;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$4;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    iput-boolean p2, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$4;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$4;->val$state:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AUTO_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$4;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/SecAccountTiles$4;->this$0:Lcom/samsung/android/settings/qstile/SecAccountTiles;

    invoke-static {v1}, Lcom/samsung/android/settings/qstile/SecAccountTiles;->access$200(Lcom/samsung/android/settings/qstile/SecAccountTiles;)V

    return-void
.end method
