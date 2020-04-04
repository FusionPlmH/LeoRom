.class final Lcom/android/server/McpsService$LocalService;
.super Ljava/lang/Object;
.source "McpsService.java"

# interfaces
.implements Lcom/android/server/McpsServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/McpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/McpsService;


# direct methods
.method private constructor <init>(Lcom/android/server/McpsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/McpsService$LocalService;->this$0:Lcom/android/server/McpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/McpsService;Lcom/android/server/McpsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/McpsService$LocalService;-><init>(Lcom/android/server/McpsService;)V

    return-void
.end method


# virtual methods
.method public updateMCPSConnectivityPolicy(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/McpsService$LocalService;->this$0:Lcom/android/server/McpsService;

    invoke-static {v0, p1}, Lcom/android/server/McpsService;->access$600(Lcom/android/server/McpsService;Z)V

    return-void
.end method
