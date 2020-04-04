.class Lcom/android/settings/localepicker/LocaleListEditor$5;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor$5;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$5;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/android/settings/localepicker/LocaleListEditor;->access$200(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor$5;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    invoke-static {v1}, Lcom/android/settings/localepicker/LocaleListEditor;->access$200(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor$5;->this$0:Lcom/android/settings/localepicker/LocaleListEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->access$300(Lcom/android/settings/localepicker/LocaleListEditor;Z)V

    return-void
.end method
