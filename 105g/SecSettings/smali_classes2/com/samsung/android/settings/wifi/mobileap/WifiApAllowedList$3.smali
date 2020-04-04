.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const v0, 0x7f1212e8

    const v1, 0x7f1208d9

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$502(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$902(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v1

    aget-object v3, v2, v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$1100(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$502(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$902(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$1100(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f1206eb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$1000(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
