.class public Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;
.super Landroid/os/Handler;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xe42

    const/16 v4, 0x1b66

    int-to-long v5, v0

    invoke-static {v1, v4, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f120f72

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, v6, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v6, v6, v0

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f120f71

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, v6, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v6, v6, v0

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v2, v2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
