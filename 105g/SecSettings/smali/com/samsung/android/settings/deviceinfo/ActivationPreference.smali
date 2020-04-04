.class public Lcom/samsung/android/settings/deviceinfo/ActivationPreference;
.super Landroid/support/v7/preference/Preference;
.source "ActivationPreference.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private textview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object p1, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0118

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public makeSummary()V
    .locals 7

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12009a

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v4, Lcom/samsung/android/settings/deviceinfo/ActivationPreference$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/ActivationPreference$1;-><init>(Lcom/samsung/android/settings/deviceinfo/ActivationPreference;II)V

    const/16 v5, 0x21

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->textview:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->makeSummary()V

    return-void
.end method
