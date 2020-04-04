.class Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApDialogSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiApDialogSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "plugged"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x1090009

    const v3, 0x1090008

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$000(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$102(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$300(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v6

    add-int/2addr v5, v6

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$202(Lcom/samsung/android/settings/wifi/WifiApDialogSec;[Ljava/lang/String;)[Ljava/lang/String;

    nop

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$200(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$400(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$300(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$300(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v5

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$200(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$500(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v6

    sub-int v6, v1, v6

    aget-object v5, v5, v6

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$600(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$200(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto/16 :goto_3

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$102(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$300(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v5

    if-lez v5, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$300(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$202(Lcom/samsung/android/settings/wifi/WifiApDialogSec;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v1

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$300(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v5

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$200(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$500(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$600(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$200(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v3, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$700(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$800(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$700(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$900(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$1000(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$1100(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$900(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->access$900(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_6
    :goto_3
    return-void
.end method
