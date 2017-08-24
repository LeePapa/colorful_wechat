{.$DEFINE DEBUG}

{$IFDEF DEBUG} program {$ELSE} library {$ENDIF} wthapi;

{$mode objfpc}{$H+}

uses
  cthreads, Classes, sysutils, JNI2, api_export, http_utils, test, wth_classes;

{$IFNDEF DEBUG}
exports
  // user
  Java_com_rarnu_tophighlight_api_WthApi_userRegister,
  Java_com_rarnu_tophighlight_api_WthApi_userLogin,
  Java_com_rarnu_tophighlight_api_WthApi_userValidateEmail,
  Java_com_rarnu_tophighlight_api_WthApi_userForgetPassword,
  Java_com_rarnu_tophighlight_api_WthApi_userChangePassword,
  Java_com_rarnu_tophighlight_api_WthApi_userChangeInfo,
  Java_com_rarnu_tophighlight_api_WthApi_userUploadHead,
  Java_com_rarnu_tophighlight_api_WthApi_userGetInfo,

  // theme
  Java_com_rarnu_tophighlight_api_WthApi_themeAddStar,
  Java_com_rarnu_tophighlight_api_WthApi_themeRemoveStar,
  Java_com_rarnu_tophighlight_api_WthApi_themeUpload,
  Java_com_rarnu_tophighlight_api_WthApi_themeChangeFile,
  Java_com_rarnu_tophighlight_api_WthApi_themeRemove,
  Java_com_rarnu_tophighlight_api_WthApi_themeChangeInfo,
  Java_com_rarnu_tophighlight_api_WthApi_themeGetInfo,
  Java_com_rarnu_tophighlight_api_WthApi_themeGetDownloadUrl,
  Java_com_rarnu_tophighlight_api_WthApi_themeGetList,
  Java_com_rarnu_tophighlight_api_WthApi_themeGetListByUser,

  // comment
  Java_com_rarnu_tophighlight_api_WthApi_commentAdd,
  Java_com_rarnu_tophighlight_api_WthApi_commentRemove,
  Java_com_rarnu_tophighlight_api_WthApi_commentGetList,

  // theme ini
  Java_com_rarnu_tophighlight_api_WthApi_readThemeFromINI,
  Java_com_rarnu_tophighlight_api_WthApi_writeThemeToINI,

  // UUID
  Java_com_rarnu_tophighlight_api_WthApi_recordDevice,

  // feedback
  Java_com_rarnu_tophighlight_api_WthApi_feedbackAdd,

  // system
  Java_com_rarnu_tophighlight_api_WthApi_xposedInstalled,

  // hotfix
  Java_com_rarnu_tophighlight_api_WthApi_checkAndDownloadVersion,
  Java_com_rarnu_tophighlight_api_WthApi_loadVersion;

{$ENDIF}

begin
  {$IFDEF DEBUG}
  doTest();
  {$ENDIF}
end.

