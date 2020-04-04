.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$Gn9wT17tDgOt2Vv1jizJdOCYxRc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$Gn9wT17tDgOt2Vv1jizJdOCYxRc;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    iput p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$Gn9wT17tDgOt2Vv1jizJdOCYxRc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$Gn9wT17tDgOt2Vv1jizJdOCYxRc;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$Gn9wT17tDgOt2Vv1jizJdOCYxRc;->f$1:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->lambda$setVisibility$1(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method
