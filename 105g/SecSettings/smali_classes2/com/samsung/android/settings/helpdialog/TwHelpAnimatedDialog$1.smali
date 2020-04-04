.class Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;
.super Ljava/lang/Object;
.source "TwHelpAnimatedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->access$000(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->access$200(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog$1;->this$0:Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;->access$100(Lcom/samsung/android/settings/helpdialog/TwHelpAnimatedDialog;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method
