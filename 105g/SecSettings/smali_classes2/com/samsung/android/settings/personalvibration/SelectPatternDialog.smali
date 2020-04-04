.class public Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;
.super Lcom/samsung/android/settings/SettingsBaseActivity;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static final LOGGING_EXTRA:[Ljava/lang/String;


# instance fields
.field ButtonCenter:Landroid/widget/Button;

.field private mAddItem:I

.field private mAddPos:I

.field mCurrentSelection:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mExistingUri:Ljava/lang/String;

.field private mFlag:Z

.field private mFromContact:Ljava/lang/Boolean;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field mOkBtn:Landroid/widget/Button;

.field private mOlderPosition:I

.field private mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

.field private mShowDefault:Ljava/lang/Boolean;

.field private mStaticItem:I

.field mSupportFolderType:Z

.field vib:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "basic_call"

    const-string v1, "heartbeat"

    const-string v2, "ticktock"

    const-string v3, "waltz"

    const-string v4, "zig_zig"

    const-string v5, "Off-beat"

    const-string v6, "Spinning"

    const-string v7, "Siren"

    const-string v8, "Telephone"

    const-string v9, "Ripple"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->LOGGING_EXTRA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    iput v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mAddItem:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    iput-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->ButtonCenter:Landroid/widget/Button;

    iput v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mSupportFolderType:Z

    return-void
.end method

.method private PositiveButtonClick()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SelectPatternDialog"

    const-string v3, "onClick() - positive : index is -1 but from Contacts"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "SelectPatternDialog"

    const-string v2, "onClick() - positive : index is -1 so break"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "SelectPatternDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick : OK button is clicked before uri is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "default_vibration_pattern"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "default_vibration_pattern"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    return-object v0
.end method

.method private doVibrate(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "vibration_pattern"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    const/4 v4, -0x1

    invoke-static {v2, v4, v3}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v4, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "ok btn is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->finish()V

    return-void
.end method

.method public deletePattern(I)Z
    .locals 8

    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePattern() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete() id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    return v3
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->finish()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsBaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getCurrentSelection()I
    .locals 10

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_vibration_pattern"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentSelection() temp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/1"

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_vibration_pattern"

    const-string v4, "content://com.android.settings.personalvibration.PersonalVibrationProvider/1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    const-string v2, "SelectPatternDialog"

    const-string v3, "getCurrentSelection(),  mFromContact && mExistingUri != null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "SelectPatternDialog"

    const-string v3, "getCurrentSelection(),  (mFromContact && mExistingUri == null) is true, return 0"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_2
    :goto_0
    const/4 v2, -0x1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "SelectPatternDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vibration_name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "vibration_name"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SelectPatternDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vibration_pattern : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "vibration_pattern"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SelectPatternDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vibration_type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "vibration_name"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SelectPatternDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v0, v4, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    const-string v4, "SelectPatternDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentSelection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    iget v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v4, v2

    return v4

    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    return v2

    :cond_9
    return v2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->PositiveButtonClick()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->finish()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v6, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;->getPatternName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected] :  info.position, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v5, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z

    goto :goto_0

    :pswitch_1
    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->deletePattern(I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v3, v4, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    iget v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    nop

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.pattern.FROM_CONTACT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    const-string v1, "show_default"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    const-string v1, "android.intent.extra.pattern.EXISTING_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    new-instance v1, Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->setExpandedAppBar(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f121402

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->setTitle(I)V

    const v4, 0x7f1302c8

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v4, 0x7f1215eb

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->setTitle(I)V

    :goto_0
    const v4, 0x7f0d028f

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->setContentView(I)V

    const v4, 0x7f0a04e6

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070587

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f07058b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    const v6, 0x7f07059c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget-object v7, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, v6

    move v11, v5

    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v7, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget-object v7, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v6

    move v9, v5

    invoke-direct/range {v7 .. v12}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v7, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d0290

    iget-object v8, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v6, 0x1020014

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckedTextView;

    const-string v7, "SelectPatternDialog"

    const-string v8, "list_item_with_radiobox"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f1215ea

    invoke-virtual {v6, v7}, Landroid/widget/CheckedTextView;->setText(I)V

    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v9, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v10, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iput v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0601bb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->semSetBottomColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundUtils;->isFolderModel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->registerForContextMenu(Landroid/view/View;)V

    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    iget v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    iput v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;->getCount()I

    move-result v2

    iget v6, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    iget v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4

    const-string v2, "SelectPatternDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate() positoin : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v6, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_2

    :cond_4
    const-string v2, "SelectPatternDialog"

    const-string v3, "onCreate() positoin : -1"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04e6

    if-ne v0, v1, :cond_4

    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateContextMenu : info.position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getCurrentSelection() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateContextMenu : mAddPos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateContextMenu : From Contact : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/16 v2, 0xb

    iget v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const-string v1, "SelectPatternDialog"

    const-string v2, "onCreateContextMenu : Noting to add on Default and pre installed pattern"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    if-ne v1, v2, :cond_1

    const-string v1, "SelectPatternDialog"

    const-string v2, "onCreateContextMenu : Noting to add on Create item"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v2

    const v3, 0x7f1203f5

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    const v2, 0x7f12069a

    invoke-interface {p1, v5, v1, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v2, "vibration_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int v1, p3, v1

    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick() : position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Add position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v3, "SelectPatternDialog"

    const-string v4, "onItemClick() : Default is clicked"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_vibration_pattern"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "vibration_pattern"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-object v6, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v2, v6}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v2

    iget-object v6, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v6, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    invoke-direct {v0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->PositiveButtonClick()V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "vibration_pattern"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-object v6, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v5, v2, v6}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v2

    iget-object v6, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v6, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v6, "SelectPatternDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick() : content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    if-ne v6, v1, :cond_2

    iget-boolean v6, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    invoke-direct {v0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->PositiveButtonClick()V

    :cond_2
    iget v6, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    if-eq v6, v1, :cond_3

    invoke-direct {v0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->PositiveButtonClick()V

    :cond_3
    iput v1, v0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    const/16 v6, 0xfac

    const/16 v7, 0xfad

    int-to-long v8, v1

    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    iget v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr p3, v0

    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    const-string v1, "SelectPatternDialog"

    const-string v2, "onItemSelected() : Default is clicked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_vibration_pattern"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "vibration_pattern"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v3, v0, v4}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v4, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v1, p3

    iget v2, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "vibration_pattern"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_CALL:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v3, v0, v4}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v4, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v4, "SelectPatternDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemSelected() : content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SettingsBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/notification/SoundUtils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mSupportFolderType:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mSupportFolderType:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    :cond_1
    const/16 v3, 0x13

    if-ne p1, v3, :cond_3

    const v3, 0x1020019

    if-eq v2, v3, :cond_2

    const v3, 0x102001a

    if-eq v2, v3, :cond_2

    const v3, 0x102001b

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/personalvibration/VibrationPatternListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->doVibrate(I)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x14

    if-ne p1, v3, :cond_4

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->doVibrate(I)V

    :cond_4
    :goto_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SettingsBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SettingsBaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method showRenameDialog(I)Z
    .locals 12

    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRenameDialog() position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "vibration_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_pattern : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "vibration_pattern"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "vibration_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c.getPosition() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const v2, 0x7f0d0212

    invoke-static {p0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a02a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x1a

    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    const-string v7, "SelectPatternDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "vibration_name"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v7, v3

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    move-object v7, v3

    check-cast v7, Landroid/widget/EditText;

    const/4 v8, 0x1

    new-array v9, v8, [Landroid/text/InputFilter;

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_0

    iput-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v7, 0x7f12034b

    new-instance v9, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;

    invoke-direct {v9, p0, v3, v4, v6}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$2;-><init>(Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;Landroid/widget/TextView;ILandroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v7, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v7, 0x7f120475

    new-instance v9, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$1;

    invoke-direct {v9, p0, v6, v3}, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog$1;-><init>(Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/TextView;)V

    invoke-virtual {v1, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v7, 0x14

    invoke-virtual {v1, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v8
.end method
