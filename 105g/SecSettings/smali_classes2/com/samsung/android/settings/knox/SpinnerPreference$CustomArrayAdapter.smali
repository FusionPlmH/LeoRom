.class Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/SpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomArrayAdapter"
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/knox/SpinnerPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/knox/SpinnerPreference;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;->this$0:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;->this$0:Lcom/samsung/android/settings/knox/SpinnerPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SpinnerPreference;->entries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;->this$0:Lcom/samsung/android/settings/knox/SpinnerPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/knox/SpinnerPreference;->entries:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0

    :cond_0
    const-string v0, "KnoxFingerprintPlusSpinnerPreference"

    const-string v1, "entries is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;->this$0:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/SpinnerPreference;->access$000(Lcom/samsung/android/settings/knox/SpinnerPreference;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d034f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;

    iget-object v2, p0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;->this$0:Lcom/samsung/android/settings/knox/SpinnerPreference;

    invoke-direct {v1, v2, p2, p1}, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;-><init>(Lcom/samsung/android/settings/knox/SpinnerPreference;Landroid/view/View;I)V

    move-object v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomHolder;

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter$1;-><init>(Lcom/samsung/android/settings/knox/SpinnerPreference$CustomArrayAdapter;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
