.class public final synthetic Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockTaskInfo$42JePVUUfupjk1rqOdD_koft6s8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockTaskInfo$42JePVUUfupjk1rqOdD_koft6s8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockTaskInfo$42JePVUUfupjk1rqOdD_koft6s8;

    invoke-direct {v0}, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockTaskInfo$42JePVUUfupjk1rqOdD_koft6s8;-><init>()V

    sput-object v0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockTaskInfo$42JePVUUfupjk1rqOdD_koft6s8;->INSTANCE:Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockTaskInfo$42JePVUUfupjk1rqOdD_koft6s8;

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

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockTaskInfo;->lambda$getMainActivityInfo$0(Landroid/content/pm/ResolveInfo;)Z

    move-result p1

    return p1
.end method
