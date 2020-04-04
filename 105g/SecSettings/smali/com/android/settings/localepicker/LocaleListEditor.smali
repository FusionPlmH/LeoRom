.class public Lcom/android/settings/localepicker/LocaleListEditor;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
.implements Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;
.implements Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;


# instance fields
.field private mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private mAddLanguage:Landroid/view/View;

.field private mAddLanguageLayout:Landroid/widget/LinearLayout;

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mApplyButton:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mApplyButtonLayout:Landroid/widget/LinearLayout;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mIsExpandedAppBar:Z

.field private mIsUiRestricted:Z

.field private mMenu:Landroid/view/Menu;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mRemoveAlertDialog:Landroid/app/AlertDialog;

.field private mRemoveMode:Z

.field private mShowingRemoveDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_locale"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveAlertDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsExpandedAppBar:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/localepicker/LocaleListEditor;)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/localepicker/LocaleListEditor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/localepicker/LocaleListEditor;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/localepicker/LocaleListEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsExpandedAppBar:Z

    return v0
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0a0488

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->setAutoMeasureEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCorners(I)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/RecyclerView;->semSetRoundedCornerColor(II)V

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3, v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setVisibleLastDivder(Z)V

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguageLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    const v2, 0x7f0a0045

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguage:Landroid/view/View;

    new-instance v3, Lcom/android/settings/localepicker/LocaleListEditor$7;

    invoke-direct {v3, p0}, Lcom/android/settings/localepicker/LocaleListEditor$7;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getUserLocaleList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private setRemoveMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setRemoveMode(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method private showNotificationDialog(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12192e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120cdd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12077a

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$8;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$8;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showRemoveLocaleWarningDialog()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    xor-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12077c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f12077b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/android/settings/localepicker/LocaleListEditor$2;

    invoke-direct {v3, p0}, Lcom/android/settings/localepicker/LocaleListEditor$2;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/localepicker/LocaleListEditor$1;

    invoke-direct {v2, p0}, Lcom/android/settings/localepicker/LocaleListEditor$1;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLanguageChecked()Z

    move-result v4

    const v5, 0x7f100039

    const v6, 0x7f121218

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    const v4, 0x7f121215

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v9}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLanguageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v8}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLangugeNameAfterDelete()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v6, v5, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v8}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLangugeNameAfterDelete()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const v4, 0x7f121216

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v9}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDeleteLangugeName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v8}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLanguageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    if-le v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v6, v5, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v8}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getDefaultLanguageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x1040009

    new-instance v5, Lcom/android/settings/localepicker/LocaleListEditor$5;

    invoke-direct {v5, p0}, Lcom/android/settings/localepicker/LocaleListEditor$5;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v4, 0x7f120518

    new-instance v5, Lcom/android/settings/localepicker/LocaleListEditor$4;

    invoke-direct {v5, p0}, Lcom/android/settings/localepicker/LocaleListEditor$4;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/localepicker/LocaleListEditor$3;

    invoke-direct {v4, p0}, Lcom/android/settings/localepicker/LocaleListEditor$3;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveAlertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/localepicker/LocaleListEditor$6;

    invoke-direct {v4, p0}, Lcom/android/settings/localepicker/LocaleListEditor$6;-><init>(Lcom/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_5

    const v2, 0x7f120518

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v2

    if-gt v2, v4, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getItemCount()I

    move-result v2

    if-le v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v2

    if-lt v2, v4, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    move v2, v4

    nop

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x158

    return v0
.end method

.method public onBackKey()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isRemoveMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isReorderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->initFeedItemList()V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    :goto_1
    return-void
.end method

.method public onCheckedChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a009c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLanguageViewState(I)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    nop

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getUserLocaleList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v2

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/localepicker/LocaleListEditor;->showNotificationDialog(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setMenuItem(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const v3, 0x7f121573

    invoke-interface {v0, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d01d8

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0087

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    const v2, 0x7f0a009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mApplyButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mApplyButtonLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguageLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mApplyButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mApplyButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setApplyBtnLayout(Landroid/widget/LinearLayout;)V

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAddLanguageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setAddLanguageBtnLayout(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setOnCheckedChangeListener(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;)V

    const v2, 0x7f0a0448

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mDescriptionView:Landroid/widget/TextView;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120cdf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120ce0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V

    return-object v0
.end method

.method public onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1f4c

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsExpandedAppBar:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x1f4d

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getMetricsCategory()I

    move-result v0

    const/16 v2, 0x1f4b

    invoke-static {v0, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    :goto_0
    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    const v2, 0x7f120cd5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mIsUiRestricted:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v2, p0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "localeRemoveMode"

    iget-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "showingLocaleRemoveDialog"

    iget-boolean v1, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "localeRemoveMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    const-string/jumbo v0, "showingLocaleRemoveDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    :cond_1
    return-void
.end method
