.class Lcom/android/systemui/qs/QSServiceBox$4;
.super Ljava/lang/Object;
.source "QSServiceBox.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSServiceBox;->showQSPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSServiceBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSServiceBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSServiceBox$4;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$4;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v0}, Lcom/android/systemui/qs/QSServiceBox;->access$200(Lcom/android/systemui/qs/QSServiceBox;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2002"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$4;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v0}, Lcom/android/systemui/qs/QSServiceBox;->access$300(Lcom/android/systemui/qs/QSServiceBox;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4201"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2005"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$4;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v0}, Lcom/android/systemui/qs/QSServiceBox;->access$500(Lcom/android/systemui/qs/QSServiceBox;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$4;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v0}, Lcom/android/systemui/qs/QSServiceBox;->access$100(Lcom/android/systemui/qs/QSServiceBox;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox$4;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v1}, Lcom/android/systemui/qs/QSServiceBox;->access$000(Lcom/android/systemui/qs/QSServiceBox;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2001"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox$4;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    iget-object v1, p0, Lcom/android/systemui/qs/QSServiceBox$4;->this$0:Lcom/android/systemui/qs/QSServiceBox;

    invoke-static {v1}, Lcom/android/systemui/qs/QSServiceBox;->access$400(Lcom/android/systemui/qs/QSServiceBox;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSServiceBox;->launchContactUsApp(Landroid/content/Context;)Z

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2004"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0115 -> :sswitch_4
        0x7f0a0189 -> :sswitch_3
        0x7f0a031b -> :sswitch_2
        0x7f0a038b -> :sswitch_1
        0x7f0a048d -> :sswitch_0
    .end sparse-switch
.end method
