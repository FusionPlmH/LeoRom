.class public Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;
.super Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.source "NfcSettingsKDI.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/search/SecIndexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;


# instance fields
.field private mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

.field private mBeamDisallowedBySystem:Z

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

.field private mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

.field private mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

.field private mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

.field private mUimNfcSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->SEARCH_INDEX_DATA_PROVIDER:Lcom/samsung/android/settings/search/SecIndexable$SecSearchIndexProvider;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/SecPreferenceScreen;Landroid/support/v14/preference/SecSwitchPreference;Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$2;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p7, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mBeamDisallowedBySystem:Z

    const-string v0, "[NfcSettingsKDI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBeamDisallowedBySystem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mBeamDisallowedBySystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->refresh()V

    return-void
.end method

.method private refresh()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getUIMLockState()I

    move-result v1

    const-string v2, "[NfcSettingsKDI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh - clfLockState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uimLockState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->checkUIMSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateNfcLock(II)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateRwP2p(II)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateABeam(II)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateLockNumChange(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateLockNumInit(I)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateTapAndPay(II)V

    return-void
.end method

.method private updateABeam(II)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const-string v7, "isNFCStateChangeAllowed"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v5, "isNFCStateChangeAllowed"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_1
    invoke-virtual {v5}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_2
    :goto_2
    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gt v6, p1, :cond_3

    if-gt p1, v5, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    const v0, 0x7f121a12

    goto/16 :goto_6

    :cond_3
    const/16 v8, 0x40

    if-ne p2, v8, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    const v0, 0x7f120f97

    goto/16 :goto_6

    :cond_4
    const/16 v8, 0xb

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    iget-object v9, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v9, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v9}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_7

    if-eqz v2, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    iget-object v10, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v10, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :goto_3
    iget-object v10, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v10}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getABeamStatus()Z

    move-result v10

    if-eqz v10, :cond_6

    const v0, 0x7f121a13

    iget-object v10, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const v0, 0x7f121a12

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_4

    :cond_7
    if-ne v9, v8, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    const v0, 0x7f121a12

    :cond_8
    :goto_4
    goto :goto_5

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    const v0, 0x7f121a12

    :goto_5
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mBeamDisallowedBySystem:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_6

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const-string v9, "no_outgoing_beam"

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v6

    if-eq v6, v8, :cond_b

    if-nez v2, :cond_c

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    :cond_d
    const/4 v6, 0x2

    if-gt v6, p2, :cond_e

    if-gt p2, v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_e
    return-void
.end method

.method private updateLockNumChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-gt v0, p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateLockNumInit(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-gt v0, p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateNfcLock(II)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-ne p2, v2, :cond_1

    const v0, 0x7f120f97

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->checkSimMno()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_2

    const v0, 0x7f120f9a

    goto :goto_0

    :cond_2
    const v0, 0x7f120f9b

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    const v0, 0x7f120f98

    goto :goto_0

    :cond_4
    const v0, 0x7f120f99

    goto :goto_0

    :cond_5
    const/16 v3, 0x100

    if-ne p1, v3, :cond_6

    if-ne p2, v3, :cond_6

    const v0, 0x7f121a12

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const v0, 0x7f121a12

    goto :goto_0

    :cond_7
    const v0, 0x7f121a13

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_8
    const/4 v3, 0x0

    if-eq p2, v2, :cond_b

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-gt v4, p2, :cond_9

    if-gt p2, v2, :cond_9

    goto :goto_1

    :cond_9
    if-gt v4, p1, :cond_a

    if-gt p1, v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_b
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :goto_2
    return-void
.end method

.method private updateRwP2p(II)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "isNFCEnabled"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v4, "isNFCEnabled"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v4

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_1
    invoke-virtual {v4}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_2
    :goto_2
    const-string v4, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "isNFCStateChangeAllowed"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_2
    const-string v5, "isNFCStateChangeAllowed"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v5

    goto :goto_4

    :catch_1
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_4
    :goto_5
    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gt v6, p1, :cond_5

    if-gt p1, v5, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_8

    :cond_5
    const/16 v8, 0xd

    const/16 v9, 0xb

    if-nez v1, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v6

    if-ne v6, v9, :cond_6

    const-string v8, "[NfcSettingsKDI]"

    const-string v9, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f121a12

    goto :goto_6

    :cond_6
    if-ne v6, v8, :cond_7

    const-string v8, "[NfcSettingsKDI]"

    const-string v9, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f121a13

    :cond_7
    :goto_6
    goto :goto_8

    :cond_8
    const/16 v10, 0x40

    if-ne p2, v10, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    const v0, 0x7f120f97

    goto :goto_8

    :cond_9
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    iget-object v10, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v10, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v10}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v10

    const v0, 0x7f1211e1

    if-ne v10, v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v8, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_7

    :cond_a
    if-ne v10, v9, :cond_b

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_b
    :goto_7
    goto :goto_8

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_8
    if-eqz v0, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_d
    const/4 v6, 0x2

    if-gt v6, p2, :cond_e

    if-gt p2, v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_e
    return-void
.end method

.method private updateTapAndPay(II)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x40

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsKDI]"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.NFC_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsKDI]"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const-string v4, "[NfcSettingsKDI]"

    const-string v5, "onPreferenceChange - RW P2P switch"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x2523

    const/16 v5, 0x2522

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v2

    const/16 v6, 0xd

    if-eq v2, v6, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setRWP2pStatus(Z)Z

    move-result v1

    invoke-static {v5, v4, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setRWP2pStatus(Z)Z

    move-result v1

    invoke-static {v5, v4, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_2
    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const-string v4, "[NfcSettingsKDI]"

    const-string v5, "onPreferenceChange - AndroidBeam switch"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x1b69

    const/16 v5, 0xe42

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setABeamStatus(Z)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v6, 0x7f121a13

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    invoke-static {v5, v4, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setABeamStatus(Z)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const v6, 0x7f121a12

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    invoke-static {v5, v4, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :goto_1
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_5
    :goto_2
    return v3
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsKDI]"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->refresh()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method
