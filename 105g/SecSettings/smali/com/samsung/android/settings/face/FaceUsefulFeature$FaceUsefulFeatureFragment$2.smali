.class Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment$2;
.super Ljava/lang/Object;
.source "FaceUsefulFeature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->addSuwBottomButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment$2;->this$0:Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "prevButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment$2;->this$0:Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->access$100(Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment$2;->this$0:Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->finish()V

    return-void
.end method
