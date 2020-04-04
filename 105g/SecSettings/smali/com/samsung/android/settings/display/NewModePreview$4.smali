.class Lcom/samsung/android/settings/display/NewModePreview$4;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NewModePreview;->showBluelightfilterDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->access$300(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NewModePreview;->access$1000(Lcom/samsung/android/settings/display/NewModePreview;)Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$4;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/NewModePreview;->access$900(Lcom/samsung/android/settings/display/NewModePreview;)Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->getPositionByValue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->setChecked(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
