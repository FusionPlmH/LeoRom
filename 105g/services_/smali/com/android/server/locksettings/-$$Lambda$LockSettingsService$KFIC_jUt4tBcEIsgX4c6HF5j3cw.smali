.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$KFIC_jUt4tBcEIsgX4c6HF5j3cw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$KFIC_jUt4tBcEIsgX4c6HF5j3cw;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$KFIC_jUt4tBcEIsgX4c6HF5j3cw;->f$0:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$setLockCredentialWithLegacyToken$36(ILcom/android/server/SdpManagerService;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
