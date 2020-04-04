.class public final synthetic Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$JDZFCe03niKPEcA7yvSzHN1eWGc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/sidescreen/applist/model/TaskInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/sidescreen/applist/model/TaskInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$JDZFCe03niKPEcA7yvSzHN1eWGc;->f$0:Lcom/android/systemui/sidescreen/applist/model/TaskInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/applist/model/-$$Lambda$TaskInfo$JDZFCe03niKPEcA7yvSzHN1eWGc;->f$0:Lcom/android/systemui/sidescreen/applist/model/TaskInfo;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/android/systemui/sidescreen/applist/model/TaskInfo;->lambda$startApp$1(Lcom/android/systemui/sidescreen/applist/model/TaskInfo;Ljava/lang/Boolean;)V

    return-void
.end method
