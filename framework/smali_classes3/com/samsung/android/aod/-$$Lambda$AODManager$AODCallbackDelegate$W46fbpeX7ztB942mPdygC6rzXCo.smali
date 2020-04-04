.class public final synthetic Lcom/samsung/android/aod/-$$Lambda$AODManager$AODCallbackDelegate$W46fbpeX7ztB942mPdygC6rzXCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/aod/-$$Lambda$AODManager$AODCallbackDelegate$W46fbpeX7ztB942mPdygC6rzXCo;->f$0:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/-$$Lambda$AODManager$AODCallbackDelegate$W46fbpeX7ztB942mPdygC6rzXCo;->f$0:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->lambda$onScreenTurningOn$0(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)V

    return-void
.end method
