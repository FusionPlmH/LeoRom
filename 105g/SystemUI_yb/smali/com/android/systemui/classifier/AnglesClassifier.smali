.class public Lcom/android/systemui/classifier/AnglesClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "AnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/AnglesClassifier$Data;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static final VERBOSE:Z


# instance fields
.field private mStrokeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/classifier/Stroke;",
            "Lcom/android/systemui/classifier/AnglesClassifier$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.falsing_log.ang"

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    const-string v0, "ANG"

    sput-object v0, Lcom/android/systemui/classifier/AnglesClassifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/classifier/AnglesClassifier;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/AnglesClassifier$Data;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance()F

    move-result v1

    invoke-static {v1, p1}, Lcom/android/systemui/classifier/AnglesVarianceEvaluator;->evaluate(FI)F

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesPercentage()F

    move-result v2

    invoke-static {v2, p1}, Lcom/android/systemui/classifier/AnglesPercentageEvaluator;->evaluate(FI)F

    move-result v2

    add-float/2addr v1, v2

    return v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/classifier/AnglesClassifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/classifier/ClassifierData;->getStroke(I)Lcom/android/systemui/classifier/Stroke;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/systemui/classifier/AnglesClassifier$Data;

    invoke-direct {v4}, Lcom/android/systemui/classifier/AnglesClassifier$Data;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/AnglesClassifier$Data;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v3, v4}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->addPoint(Lcom/android/systemui/classifier/Point;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
