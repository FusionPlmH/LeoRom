.class public final synthetic Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$XYBgMhSvAJc0aSVh7D7RfZEKA3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$XYBgMhSvAJc0aSVh7D7RfZEKA3U;->f$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$MultiWindowGestureDetector$XYBgMhSvAJc0aSVh7D7RfZEKA3U;->f$0:Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;->lambda$restoreTouchData$0(Lcom/samsung/android/systemui/sidescreen/MultiWindowGestureDetector;)V

    return-void
.end method
