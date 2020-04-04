.class final Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckPasswordCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->handleNext()V

    return-void
.end method

.method private handleNext()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$800(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volumelimit_secure_password"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$900(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$100(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$800(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "volumelimit_set_password"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$800(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "volumelimit_secure_password"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$102(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Z)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$1200(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$1400(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$1202(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Z)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$200(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->setCheckedPW(Z)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$900(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$1000(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f121594

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public showCheckPasswordDialog()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0144

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$1;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    const v3, 0x7f0a0538

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$602(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$600(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$2;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$800(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SoundUtils;->isEnabledShowBtnBg(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    const v3, 0x7f08026f

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$600(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    const v4, 0x7f0a05ba

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$902(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$900(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$3;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    const v4, 0x7f0a036a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$1002(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$1000(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f120d6e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$900(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$1100(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$900(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback$4;-><init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$302(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$300(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
