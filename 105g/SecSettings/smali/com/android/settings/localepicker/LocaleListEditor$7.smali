.class Lcom/android/settings/localepicker/LocaleListEditor$7;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->access$500(Lcom/android/settings/localepicker/LocaleListEditor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SettingsBaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SettingsBaseActivity;->setExpandedAppBar(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x1f41

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v2, v1}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v1}, Lcom/android/settings/localepicker/LocaleListEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor$7;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleListEditor;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "localeListEditor"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
