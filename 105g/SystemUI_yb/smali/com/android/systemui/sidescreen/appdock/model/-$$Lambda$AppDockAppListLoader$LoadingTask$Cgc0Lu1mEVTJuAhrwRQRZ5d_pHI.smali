.class public final synthetic Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockAppListLoader$LoadingTask$Cgc0Lu1mEVTJuAhrwRQRZ5d_pHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockAppListLoader$LoadingTask$Cgc0Lu1mEVTJuAhrwRQRZ5d_pHI;->f$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockAppListLoader$LoadingTask$Cgc0Lu1mEVTJuAhrwRQRZ5d_pHI;->f$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-static {v0, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;->lambda$doInBackground$0(Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTask;Landroid/content/pm/ResolveInfo;)Z

    move-result p1

    return p1
.end method
