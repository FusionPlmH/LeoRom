.class public final synthetic Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;->f$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    iput-object p2, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;->f$0:Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;->f$3:I

    iget-object v4, p0, Lcom/android/systemui/sidescreen/appdock/model/-$$Lambda$AppDockItemInfo$WJPmmsHsSdj39kj9uyNEejsSqrc;->f$4:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->lambda$startActivity$0(Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method
