.class Lcom/samsung/android/settings/ConnectionsUtils$2;
.super Ljava/lang/Object;
.source "ConnectionsUtils.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/ConnectionsUtils;->getDualImsManager(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/ConnectionsUtils$2;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/ConnectionsUtils;->mImsManagerConnected:[Z

    iget v1, p0, Lcom/samsung/android/settings/ConnectionsUtils$2;->val$phoneId:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    const-string v0, "Connections_Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected mImsManager, phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/ConnectionsUtils$2;->val$phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/ConnectionsUtils;->mImsManagerConnected:[Z

    iget v1, p0, Lcom/samsung/android/settings/ConnectionsUtils$2;->val$phoneId:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    sget-object v0, Lcom/samsung/android/settings/ConnectionsUtils;->mImsManagers:[Lcom/sec/ims/ImsManager;

    iget v1, p0, Lcom/samsung/android/settings/ConnectionsUtils$2;->val$phoneId:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v0, "Connections_Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected mImsManager, phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/ConnectionsUtils$2;->val$phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
