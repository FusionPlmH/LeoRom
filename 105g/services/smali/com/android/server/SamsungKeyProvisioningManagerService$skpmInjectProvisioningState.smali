.class Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;
.super Ljava/lang/Object;
.source "SamsungKeyProvisioningManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SamsungKeyProvisioningManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "skpmInjectProvisioningState"
.end annotation


# instance fields
.field private injectProvisioning:Z

.field final synthetic this$0:Lcom/android/server/SamsungKeyProvisioningManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SamsungKeyProvisioningManagerService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;->this$0:Lcom/android/server/SamsungKeyProvisioningManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;->injectProvisioning:Z

    return-void
.end method


# virtual methods
.method public getSkpmInjectProvisioningState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;->injectProvisioning:Z

    return v0
.end method

.method public setInjectProvisioningOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;->injectProvisioning:Z

    return-void
.end method

.method public setInjectProvisioningOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/SamsungKeyProvisioningManagerService$skpmInjectProvisioningState;->injectProvisioning:Z

    return-void
.end method
