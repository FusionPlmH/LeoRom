.class public final synthetic Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$nie2YFMSWSKRzjhDwVaqbIAz0UY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

.field private final synthetic f$1:I

.field private final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$nie2YFMSWSKRzjhDwVaqbIAz0UY;->f$0:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$nie2YFMSWSKRzjhDwVaqbIAz0UY;->f$1:I

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$nie2YFMSWSKRzjhDwVaqbIAz0UY;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$nie2YFMSWSKRzjhDwVaqbIAz0UY;->f$0:Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$nie2YFMSWSKRzjhDwVaqbIAz0UY;->f$1:I

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/forceimmersive/-$$Lambda$GestureHintAnimator$nie2YFMSWSKRzjhDwVaqbIAz0UY;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;->lambda$onActionMove$2(Lcom/android/systemui/statusbar/phone/forceimmersive/GestureHintAnimator;IJ)V

    return-void
.end method
