.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;
.super Landroid/widget/FrameLayout;
.source "Finger.java"


# instance fields
.field private final ANIMATION_DELAY:J

.field private final ANIMATION_OFF_DURATION:J

.field private final ANIMATION_ON_DURATION:J

.field private final TAG:Ljava/lang/String;

.field private alphaAnimator:Landroid/animation/ValueAnimator;

.field private alphaValue:F

.field private context:Landroid/content/Context;

.field private fingerColor:I

.field private fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

.field private fingerView2:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

.field private greyColor:I

.field private height:I

.field private inverseFinger:Landroid/widget/ImageView;

.field private inverseFingerResID:I

.field private mCount80:I

.field private mCurrentPercent:F

.field private mFill_1:Landroid/widget/ImageView;

.field private mFill_10:Landroid/widget/ImageView;

.field private mFill_11:Landroid/widget/ImageView;

.field private mFill_12:Landroid/widget/ImageView;

.field private mFill_13:Landroid/widget/ImageView;

.field private mFill_2:Landroid/widget/ImageView;

.field private mFill_3:Landroid/widget/ImageView;

.field private mFill_31:Landroid/widget/ImageView;

.field private mFill_32:Landroid/widget/ImageView;

.field private mFill_33:Landroid/widget/ImageView;

.field private mFill_4:Landroid/widget/ImageView;

.field private mFill_41:Landroid/widget/ImageView;

.field private mFill_42:Landroid/widget/ImageView;

.field private mFill_43:Landroid/widget/ImageView;

.field private mFill_44:Landroid/widget/ImageView;

.field private mFill_5:Landroid/widget/ImageView;

.field private mFill_6:Landroid/widget/ImageView;

.field private mFill_7:Landroid/widget/ImageView;

.field private mFill_8:Landroid/widget/ImageView;

.field private mFill_9:Landroid/widget/ImageView;

.field private mIsFourGuides:Z

.field private mIsHidden:Z

.field private mPercent:F

.field private mPercentAnimator:Landroid/animation/ValueAnimator;

.field private mPreviousPercent:F

.field private mTargetPercent:F

.field private mUiVersion:I

.field private startRatio:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIII)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FingerScanEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->ANIMATION_ON_DURATION:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->ANIMATION_OFF_DURATION:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->ANIMATION_DELAY:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCurrentPercent:F

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mTargetPercent:F

    iput v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPreviousPercent:F

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsFourGuides:Z

    iput p7, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mUiVersion:I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    iput p4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerColor:I

    iput p5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->greyColor:I

    iput p6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFingerResID:I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setLayout()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setAnimator()V

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mUiVersion:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setPercentAnimator()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setLayoutDirection(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView2:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCurrentPercent:F

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCurrentPercent:F

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPreviousPercent:F

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mTargetPercent:F

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->showProgressVI(F)V

    return-void
.end method

.method private addFillImageView()V
    .locals 5

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_1:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_30:I

    const/16 v2, 0x2c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_2:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_34:I

    const/16 v2, 0x2a

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_3:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_3:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_38:I

    const/16 v2, 0x28

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_4:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_4:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_42:I

    const/16 v2, 0x26

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_5:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_5:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_48:I

    const/16 v2, 0x24

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_6:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_6:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_52:I

    const/16 v2, 0x22

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_7:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_7:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_56:I

    const/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_8:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_8:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_60:I

    const/16 v2, 0x1e

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_9:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_9:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_64:I

    const/16 v2, 0x1c

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_10:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_10:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_68:I

    const/16 v2, 0x1a

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_11:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_11:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_72:I

    const/16 v2, 0x18

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_12:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_12:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_76:I

    const/16 v2, 0x16

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_13:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_13:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_01_fill_80:I

    const/16 v2, 0x14

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_31:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_31:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_3_1:I

    const/16 v2, 0x12

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_32:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_32:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_3_2:I

    const/16 v3, 0x10

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_33:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_33:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_3_3:I

    const/16 v4, 0xe

    invoke-direct {p0, v0, v1, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_41:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_41:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_4_1:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_42:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_42:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_4_2:I

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_43:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_43:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_4_3:I

    invoke-direct {p0, v0, v1, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_44:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_44:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->progress_02_fill_3_3:I

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setImageView(Landroid/widget/ImageView;II)V

    return-void
.end method

.method private cancelAnimator()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mUiVersion:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private setAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setImageView(Landroid/widget/ImageView;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    int-to-float v0, p3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationZ(F)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setLayout()V
    .locals 13

    new-instance v6, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    iget v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerColor:I

    iget v5, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->greyColor:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;-><init>(Landroid/content/Context;IIII)V

    iput-object v6, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    new-instance v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    iget-object v8, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    iget v9, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v10, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    iget v11, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerColor:I

    iget v12, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->greyColor:I

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView2:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mUiVersion:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->addFillImageView()V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->greyColor:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView2:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->addView(Landroid/view/View;II)V

    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFingerResID:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mUiVersion:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationZ(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->width:I

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->height:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setPercentAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger$2;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showProgressVI(F)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    iput v2, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPreviousPercent:F

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_1:Landroid/widget/ImageView;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_14

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_1:Landroid/widget/ImageView;

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_0
    const/high16 v0, 0x41980000    # 19.0f

    cmpl-float v5, v2, v0

    if-lez v5, :cond_1

    iget-object v5, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_2:Landroid/widget/ImageView;

    invoke-direct {v1, v5, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    iget-object v5, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_2:Landroid/widget/ImageView;

    invoke-direct {v1, v5, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_1
    const/high16 v5, 0x41d80000    # 27.0f

    cmpl-float v6, v2, v5

    if-lez v6, :cond_2

    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_3:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_2

    :cond_2
    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_3:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_2
    const/high16 v6, 0x42080000    # 34.0f

    cmpl-float v7, v2, v6

    if-lez v7, :cond_3

    iget-object v7, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_4:Landroid/widget/ImageView;

    invoke-direct {v1, v7, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_3

    :cond_3
    iget-object v7, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_4:Landroid/widget/ImageView;

    invoke-direct {v1, v7, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_3
    const/high16 v7, 0x42240000    # 41.0f

    cmpl-float v8, v2, v7

    if-lez v8, :cond_4

    iget-object v8, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_5:Landroid/widget/ImageView;

    invoke-direct {v1, v8, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_4

    :cond_4
    iget-object v8, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_5:Landroid/widget/ImageView;

    invoke-direct {v1, v8, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_4
    const/high16 v8, 0x423c0000    # 47.0f

    cmpl-float v9, v2, v8

    if-lez v9, :cond_5

    iget-object v9, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_6:Landroid/widget/ImageView;

    invoke-direct {v1, v9, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_5

    :cond_5
    iget-object v9, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_6:Landroid/widget/ImageView;

    invoke-direct {v1, v9, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_5
    const/high16 v9, 0x42540000    # 53.0f

    cmpl-float v10, v2, v9

    if-lez v10, :cond_6

    iget-object v10, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_7:Landroid/widget/ImageView;

    invoke-direct {v1, v10, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_6

    :cond_6
    iget-object v10, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_7:Landroid/widget/ImageView;

    invoke-direct {v1, v10, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_6
    const/high16 v10, 0x42640000    # 57.0f

    cmpl-float v11, v2, v10

    if-lez v11, :cond_7

    iget-object v11, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_8:Landroid/widget/ImageView;

    invoke-direct {v1, v11, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_7

    :cond_7
    iget-object v11, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_8:Landroid/widget/ImageView;

    invoke-direct {v1, v11, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_7
    const/high16 v11, 0x427c0000    # 63.0f

    cmpl-float v12, v2, v11

    if-lez v12, :cond_8

    iget-object v12, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_9:Landroid/widget/ImageView;

    invoke-direct {v1, v12, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_8

    :cond_8
    iget-object v12, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_9:Landroid/widget/ImageView;

    invoke-direct {v1, v12, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_8
    const/high16 v12, 0x42860000    # 67.0f

    cmpl-float v13, v2, v12

    if-lez v13, :cond_9

    iget-object v13, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_10:Landroid/widget/ImageView;

    invoke-direct {v1, v13, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_9

    :cond_9
    iget-object v13, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_10:Landroid/widget/ImageView;

    invoke-direct {v1, v13, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_9
    const/high16 v13, 0x428e0000    # 71.0f

    cmpl-float v14, v2, v13

    if-lez v14, :cond_a

    iget-object v14, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_11:Landroid/widget/ImageView;

    invoke-direct {v1, v14, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_a

    :cond_a
    iget-object v14, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_11:Landroid/widget/ImageView;

    invoke-direct {v1, v14, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_a
    const/high16 v14, 0x42960000    # 75.0f

    cmpl-float v15, v2, v14

    if-lez v15, :cond_b

    iget-object v15, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_12:Landroid/widget/ImageView;

    invoke-direct {v1, v15, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_b

    :cond_b
    iget-object v15, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_12:Landroid/widget/ImageView;

    invoke-direct {v1, v15, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_b
    const/high16 v15, 0x429e0000    # 79.0f

    cmpl-float v16, v2, v15

    if-lez v16, :cond_c

    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_13:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_c

    :cond_c
    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_13:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_c
    iget-boolean v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsFourGuides:Z

    const/high16 v16, 0x42a00000    # 80.0f

    if-eqz v6, :cond_11

    cmpl-float v6, v2, v16

    if-lez v6, :cond_d

    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_41:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_d

    :cond_d
    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_41:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_d
    const/high16 v6, 0x42aa0000    # 85.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_e

    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_42:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_e

    :cond_e
    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_42:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_e
    const/high16 v6, 0x42b40000    # 90.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_f

    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_43:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_f

    :cond_f
    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_43:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_f
    const/high16 v6, 0x42be0000    # 95.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_10

    iget-object v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_44:Landroid/widget/ImageView;

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_12

    :cond_10
    iget-object v4, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_44:Landroid/widget/ImageView;

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_12

    :cond_11
    cmpl-float v6, v2, v16

    if-lez v6, :cond_12

    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_31:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_10

    :cond_12
    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_31:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_10
    const/high16 v6, 0x42ae0000    # 87.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_13

    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_32:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_11

    :cond_13
    iget-object v6, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_32:Landroid/widget/ImageView;

    invoke-direct {v1, v6, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_11
    const/high16 v6, 0x42ba0000    # 93.0f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_14

    iget-object v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_33:Landroid/widget/ImageView;

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    goto :goto_12

    :cond_14
    iget-object v4, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mFill_33:Landroid/widget/ImageView;

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->startViewAnimation(Landroid/view/View;Z)V

    :goto_12
    cmpl-float v3, v2, v16

    if-ltz v3, :cond_1d

    iget-boolean v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsFourGuides:Z

    if-eqz v3, :cond_19

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_15

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_15
    const/high16 v3, 0x42be0000    # 95.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_16

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_16
    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_17

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_17
    const/high16 v3, 0x42aa0000    # 85.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_18

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_18
    cmpl-float v3, v2, v16

    if-ltz v3, :cond_2a

    iget-object v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_19
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1a

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_1a
    const/high16 v3, 0x42ba0000    # 93.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1b

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_1b
    const/high16 v3, 0x42ae0000    # 87.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_1c
    cmpl-float v3, v2, v16

    if-ltz v3, :cond_2a

    iget-object v3, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v3, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_1d
    cmpl-float v3, v2, v15

    if-ltz v3, :cond_1e

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_1e
    cmpl-float v3, v2, v14

    if-ltz v3, :cond_1f

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_1f
    cmpl-float v3, v2, v13

    if-ltz v3, :cond_20

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_20
    cmpl-float v3, v2, v12

    if-ltz v3, :cond_21

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto/16 :goto_13

    :cond_21
    cmpl-float v3, v2, v11

    if-ltz v3, :cond_22

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_13

    :cond_22
    cmpl-float v3, v2, v10

    if-ltz v3, :cond_23

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x41f80000    # 31.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_13

    :cond_23
    cmpl-float v3, v2, v9

    if-ltz v3, :cond_24

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x42040000    # 33.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_13

    :cond_24
    cmpl-float v3, v2, v8

    if-ltz v3, :cond_25

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_13

    :cond_25
    cmpl-float v3, v2, v7

    if-ltz v3, :cond_26

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x42140000    # 37.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_13

    :cond_26
    const/high16 v3, 0x42080000    # 34.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_27

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x421c0000    # 39.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_13

    :cond_27
    cmpl-float v3, v2, v5

    if-ltz v3, :cond_28

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    invoke-virtual {v0, v7}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_13

    :cond_28
    cmpl-float v0, v2, v0

    if-ltz v0, :cond_29

    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x422c0000    # 43.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V

    goto :goto_13

    :cond_29
    iget-object v0, v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    const/high16 v3, 0x42340000    # 45.0f

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->setTranslationZ(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2a
    :goto_13
    goto :goto_15

    :goto_14
    nop

    const-string v3, "FingerScanEffect"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-void
.end method

.method private startViewAnimation(Landroid/view/View;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v1, v3

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v1, v3

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsHidden:Z

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public isHide()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsHidden:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView2:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->setDuration(I)V

    return-void
.end method

.method public setPercent(F)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->cancelAnimator()V

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mUiVersion:I

    const/4 v1, 0x6

    const/high16 v2, 0x42a00000    # 80.0f

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercent:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    cmpl-float v0, p1, v2

    if-lez v0, :cond_0

    const/high16 v0, 0x42ae0000    # 87.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsFourGuides:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;

    iget-boolean v4, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsFourGuides:Z

    iput-boolean v4, v0, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView;->mIsFourGuides:Z

    :cond_0
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercent:F

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mUiVersion:I

    if-ne v0, v1, :cond_5

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    if-eq v0, v3, :cond_2

    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    if-ge v0, v3, :cond_4

    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->bg_finger_02:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    if-lez v0, :cond_4

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mCount80:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->inverseFinger:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/visualeffect/progressfingerscan/R$drawable;->bg_finger_01:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mTargetPercent:F

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mPercentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView2:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->setPaintAlpha(I)V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->isHide()Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaValue:F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView2:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    invoke-virtual {v1, v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->setAlpha(F)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->fingerView2:Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/FingerView2;->setPercent(F)V

    :goto_2
    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->isHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/Finger;->mIsHidden:Z

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
