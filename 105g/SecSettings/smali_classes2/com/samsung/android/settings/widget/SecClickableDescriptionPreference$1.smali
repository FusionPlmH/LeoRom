.class Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "SecClickableDescriptionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->showDialogByClickOnSpannableText(Landroid/widget/TextView;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1$1;-><init>(Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;)V

    const v3, 0x7f120517

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
