.class public Landroid/content/SyncActivityTooManyDeletes;
.super Landroid/app/Activity;
.source "SyncActivityTooManyDeletes.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mNumDeletes:J

.field private mProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startSyncReallyDelete()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "deletions_override"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private startSyncUndoDeletes()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "discard_deletions"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "expedited"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->finish()V

    return-void

    :cond_0
    const-string/jumbo v2, "numDeletes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/content/SyncActivityTooManyDeletes;->mNumDeletes:J

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, v0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    const-string v2, "authority"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/SyncActivityTooManyDeletes;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "provider"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/SyncActivityTooManyDeletes;->mProvider:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040a40

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1040a43

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1040a3f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    const v9, 0x1020014

    invoke-direct {v4, v0, v8, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    new-instance v8, Landroid/widget/ListView;

    invoke-direct {v8, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v8, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040a42

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v12, v0, Landroid/content/SyncActivityTooManyDeletes;->mNumDeletes:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v2, v5

    iget-object v12, v0, Landroid/content/SyncActivityTooManyDeletes;->mProvider:Ljava/lang/String;

    aput-object v12, v2, v6

    iget-object v12, v0, Landroid/content/SyncActivityTooManyDeletes;->mAccount:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v12, v2, v7

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x0

    invoke-direct {v6, v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x10503d4

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1050479

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v9, v7, v12, v13, v14}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x1050471

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/SyncActivityTooManyDeletes;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v8, v7, v5, v12, v11}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    invoke-virtual {v0, v2}, Landroid/content/SyncActivityTooManyDeletes;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-direct {p0}, Landroid/content/SyncActivityTooManyDeletes;->startSyncReallyDelete()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    invoke-direct {p0}, Landroid/content/SyncActivityTooManyDeletes;->startSyncUndoDeletes()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/SyncActivityTooManyDeletes;->finish()V

    return-void
.end method
