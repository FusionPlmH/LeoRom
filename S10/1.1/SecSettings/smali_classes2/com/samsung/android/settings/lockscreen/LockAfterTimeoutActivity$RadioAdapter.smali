.class public Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LockAfterTimeoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RadioAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mEntries:[Ljava/lang/CharSequence;

.field mValues:[Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->this$0:Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity;

    const v0, 0x7f0d01de

    const v1, 0x7f0a0866

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->mEntries:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->mValues:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getPositionFromValue(J)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->mValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->mValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->mValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getValueFromPosition(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockAfterTimeoutActivity$RadioAdapter;->mValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
