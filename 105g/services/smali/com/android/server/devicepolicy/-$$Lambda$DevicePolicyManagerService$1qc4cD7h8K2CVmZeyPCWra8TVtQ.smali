.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$1qc4cD7h8K2CVmZeyPCWra8TVtQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$1qc4cD7h8K2CVmZeyPCWra8TVtQ;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$1qc4cD7h8K2CVmZeyPCWra8TVtQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$1qc4cD7h8K2CVmZeyPCWra8TVtQ;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$1qc4cD7h8K2CVmZeyPCWra8TVtQ;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setTimeZone$12(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V

    return-void
.end method
