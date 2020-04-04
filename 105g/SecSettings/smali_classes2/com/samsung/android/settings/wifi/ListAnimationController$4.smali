.class Lcom/samsung/android/settings/wifi/ListAnimationController$4;
.super Ljava/lang/Object;
.source "ListAnimationController.java"

# interfaces
.implements Landroid/widget/SemExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/ListAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/ListAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$4;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/SemExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$4;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->access$300(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getChild(II)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$4;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->access$000(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/ListAnimationController$4;->this$0:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->access$000(Lcom/samsung/android/settings/wifi/ListAnimationController;)Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;->onItemClick(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    goto :goto_0

    :cond_0
    const-string v1, "WifiSettings.VI"

    const-string v2, "onClick - listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method
