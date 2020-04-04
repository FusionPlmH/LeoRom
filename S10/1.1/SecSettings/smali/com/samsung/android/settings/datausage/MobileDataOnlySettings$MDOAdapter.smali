.class public Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MobileDataOnlySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MDOAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private isEnabled:Z

.field private mContext:Landroid/content/Context;

.field mMDOLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mUrspManager:Landroid/net/UrspManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->isEnabled:Z

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-virtual {p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "urspservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/UrspManager;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mUrspManager:Landroid/net/UrspManager;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mMDOLists:Ljava/util/List;

    invoke-static {}, Lcom/android/settings/Utils;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    :cond_0
    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->isChecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/net/UrspManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mUrspManager:Landroid/net/UrspManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isBlacklisted(I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mUrspManager:Landroid/net/UrspManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/UrspManager;->getAllUrspBlackListUidsRule(I)[I

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget v3, v0, v2

    if-ne v3, p1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method private isChecked(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mUrspManager:Landroid/net/UrspManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/net/UrspManager;->isUrspRuleEnabled(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mMDOLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    instance-of v0, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mMDOLists:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$1;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->isEnabled:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->isBlacklisted(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$1300(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    iget v5, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->uid:I

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->isChecked(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->appSwitch:Landroid/widget/Switch;

    new-instance v5, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter$2;-><init>(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;)V

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-ne p2, v3, :cond_1

    const/4 v2, 0x3

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->semSetRoundedCorners(I)V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->semSetRoundedCorners(I)V

    :goto_1
    goto :goto_2

    :cond_2
    instance-of v0, p1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;

    iget-object v1, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;->spinner:Landroid/support/v7/widget/AppCompatSpinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v1, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;->spinner:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$000(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;->spinner:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;->access$1100(Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected viewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0214

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01ef

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mParent:Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$HeaderViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/settings/datausage/MobileDataOnlySettings;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->isEnabled:Z

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MobileDataOnlySettings$MDOAdapter;->mMDOLists:Ljava/util/List;

    return-void
.end method
