.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;
.super Landroid/widget/Spinner;
.source "NavigationBarSpinner.java"


# instance fields
.field prevPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->prevPos:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->prevPos:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->prevPos:I

    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->getSelectedItemPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->prevPos:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->prevPos:I

    return-void
.end method
