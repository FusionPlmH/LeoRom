.class Lcom/android/settings/widget/EntityHeaderController$1;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/EntityHeaderController;->bindAppInfoLink(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/EntityHeaderController;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/EntityHeaderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v0}, Lcom/android/settings/widget/EntityHeaderController;->access$000(Lcom/android/settings/widget/EntityHeaderController;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const v2, 0x7f120187

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v0}, Lcom/android/settings/widget/EntityHeaderController;->access$100(Lcom/android/settings/widget/EntityHeaderController;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v0}, Lcom/android/settings/widget/EntityHeaderController;->access$200(Lcom/android/settings/widget/EntityHeaderController;)I

    move-result v4

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v0}, Lcom/android/settings/widget/EntityHeaderController;->access$300(Lcom/android/settings/widget/EntityHeaderController;)Landroid/app/Fragment;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v0}, Lcom/android/settings/widget/EntityHeaderController;->access$400(Lcom/android/settings/widget/EntityHeaderController;)I

    move-result v7

    invoke-static/range {v1 .. v7}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController$1;->this$0:Lcom/android/settings/widget/EntityHeaderController;

    invoke-static {v0}, Lcom/android/settings/widget/EntityHeaderController;->access$500(Lcom/android/settings/widget/EntityHeaderController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method
