.class Lcom/android/systemui/qs/SecPageIndicator$1;
.super Ljava/lang/Object;
.source "SecPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/SecPageIndicator;->setNumPages(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecPageIndicator;

.field final synthetic val$pageNum:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecPageIndicator;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->this$0:Lcom/android/systemui/qs/SecPageIndicator;

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->val$pageNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->this$0:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecPageIndicator;->access$000(Lcom/android/systemui/qs/SecPageIndicator;)Lcom/android/systemui/qs/SecPageIndicator$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->this$0:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecPageIndicator;->access$100(Lcom/android/systemui/qs/SecPageIndicator;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->this$0:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecPageIndicator;->access$000(Lcom/android/systemui/qs/SecPageIndicator;)Lcom/android/systemui/qs/SecPageIndicator$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/qs/SecPageIndicator$1;->val$pageNum:I

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/SecPageIndicator$Callback;->setViewPage(I)V

    :cond_0
    return-void
.end method
