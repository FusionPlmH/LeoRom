.class Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;
.super Ljava/lang/Object;
.source "Eula.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/legal/Eula;->createThreadAndDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$300(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$400(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_AA_GET:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$102(Lcom/samsung/android/settings/deviceinfo/legal/Eula;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$400(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isCscEulaSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$400(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$400(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getSamsungLegalFilePathFromCSC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getStringFromCSC(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$102(Lcom/samsung/android/settings/deviceinfo/legal/Eula;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$400(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/swlpcontract/SWLPContract;->URI_EULA_GET:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/sec/android/app/swlpcontract/SWLPContract;->getStringByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$102(Lcom/samsung/android/settings/deviceinfo/legal/Eula;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/Eula;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->access$500(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
