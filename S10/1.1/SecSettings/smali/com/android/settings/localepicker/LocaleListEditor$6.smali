.class Lcom/android/settings/localepicker/LocaleListEditor$6;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "alertTitle"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v2}, Lcom/android/settings/localepicker/LocaleListEditor;->access$400(Lcom/android/settings/localepicker/LocaleListEditor;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor$6;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v2}, Lcom/android/settings/localepicker/LocaleListEditor;->access$400(Lcom/android/settings/localepicker/LocaleListEditor;)Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_1
    return-void
.end method
