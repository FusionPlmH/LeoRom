.class Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView$2;
.super Ljava/lang/Object;
.source "RecipientsMinusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView$2;->this$0:Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x1176

    const/16 v1, 0x1186

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView$2;->this$0:Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->setFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView$2;->this$0:Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;->access$000(Lcom/samsung/android/settings/fmm/widget/RecipientsMinusView;)V

    return-void
.end method
