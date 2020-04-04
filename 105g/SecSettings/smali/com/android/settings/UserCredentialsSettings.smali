.class public Lcom/android/settings/UserCredentialsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$Credential;,
        Lcom/android/settings/UserCredentialsSettings$ViewHolder;,
        Lcom/android/settings/UserCredentialsSettings$CredentialAdapter;,
        Lcom/android/settings/UserCredentialsSettings$AliasLoader;,
        Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;
    }
.end annotation


# static fields
.field private static final credentialViewTypes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_KEY:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const v2, 0x7f0a01d5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->USER_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const v2, 0x7f0a01d4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->CA_CERTIFICATE:Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    const v2, 0x7f0a01d2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method protected static getCredentialView(Lcom/android/settings/UserCredentialsSettings$Credential;ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v1, 0x7f0a0067

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isKnox()Z

    move-result v1

    const v2, 0x7f12057a

    const v3, 0x7f120579

    const v4, 0x7f0a062d

    if-eqz v1, :cond_2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isWifiForKnox()Z

    move-result v4

    if-nez v4, :cond_1

    nop

    move v2, v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_3

    nop

    move v2, v3

    goto :goto_1

    :cond_3
    nop

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const v1, 0x7f0a01d1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz p4, :cond_4

    move v3, v0

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_6

    move v1, v0

    :goto_4
    sget-object v3, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    sget-object v3, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    sget-object v5, Lcom/android/settings/UserCredentialsSettings;->credentialViewTypes:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    nop

    move v4, v0

    goto :goto_5

    :cond_5
    nop

    move v4, v2

    :goto_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    return-object p2
.end method


# virtual methods
.method protected announceRemoval(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f121bab

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/UserCredentialsSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x11d

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential;

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/android/settings/UserCredentialsSettings$CredentialDialogFragment;->show(Landroid/app/Fragment;Lcom/android/settings/UserCredentialsSettings$Credential;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f121bad

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->refreshItems()V

    return-void
.end method

.method protected refreshItems()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;-><init>(Lcom/android/settings/UserCredentialsSettings;Lcom/android/settings/UserCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UserCredentialsSettings$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
