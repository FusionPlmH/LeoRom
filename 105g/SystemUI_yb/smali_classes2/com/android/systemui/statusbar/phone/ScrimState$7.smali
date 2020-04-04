.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$7;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontAlpha:F

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimationDuration:J

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimateChange:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimationDuration:J

    goto :goto_1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimateChange:Z

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontTint:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindTint:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->WAKE_AND_UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_4

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimateChange:Z

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x1000000

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState$7;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimState$7;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontTint:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindTint:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    :cond_4
    :goto_1
    return-void
.end method
