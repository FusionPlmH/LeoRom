.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$2Gwxm4LC6fYrf-YTHpo2Lhc8GCI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$2Gwxm4LC6fYrf-YTHpo2Lhc8GCI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$Dependency$2Gwxm4LC6fYrf-YTHpo2Lhc8GCI;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$Dependency$2Gwxm4LC6fYrf-YTHpo2Lhc8GCI;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$Dependency$2Gwxm4LC6fYrf-YTHpo2Lhc8GCI;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$2Gwxm4LC6fYrf-YTHpo2Lhc8GCI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/Dependency;->lambda$onConfigurationChanged$86(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
