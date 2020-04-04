.class Lcom/samsung/android/settings/iris/IrisSettings$4;
.super Ljava/lang/Object;
.source "IrisSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisSettings;->deleteRegisteredIris()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisSettings$4;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$4;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->access$500(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$4;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->access$600(Lcom/samsung/android/settings/iris/IrisSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$4;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->removeIris()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$4;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x208a

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_1
    return-void
.end method
