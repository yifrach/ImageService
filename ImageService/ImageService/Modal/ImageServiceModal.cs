﻿using System;
using System.IO;
using System.Drawing;
using System.Text.RegularExpressions;
using System.Drawing.Imaging;
using System.Text;

namespace ImageService.Modal
{
    public class ImageServiceModal : IImageServiceModal
    {
        #region Members
        private string m_OutputFolder;            // The Output Folder
        private int m_thumbnailSize;              // The Size Of The Thumbnail Size
        private string yearPath;
        private string monthPath;
        private string thumbYearPath;
        private string thumbMonthPath;
        private Image image;
        private static Regex r = new Regex(":");
        #endregion

        public ImageServiceModal (string output, int thumbnailSize)
        {
            this.m_OutputFolder = output;
            this.m_thumbnailSize = thumbnailSize;
        }

        public string AddFile(string path, out bool result)
        {
            string msg="";
            string filePath = "";
            try
            {
                if (File.Exists(path))
                {
                    if(!HasImageExtension(path)) {
                        throw new Exception("File is not an image");
                    }
                    getDate(path);
                    
                    if (!Directory.Exists(monthPath)) 
                    {
                        Directory.CreateDirectory(monthPath);
                    }

                    filePath = SameName(path, monthPath);
                    File.Copy(path, filePath);
                    msg = "Added " + Path.GetFileName(path) + " to " + monthPath;

                    if (!Directory.Exists(thumbMonthPath))
                    {
                        Directory.CreateDirectory(thumbMonthPath);
                    }

                    filePath = SameName(path, thumbMonthPath);
                    Image thumb = Image.FromStream(new MemoryStream(File.ReadAllBytes(path)));
                    thumb = (Image)(new Bitmap(thumb, new Size(m_thumbnailSize, m_thumbnailSize)));
                    thumb.Save(filePath);
                    msg += " and Added a thumbnail " + Path.GetFileName(path) + " to " + thumbMonthPath;
                    thumb.Dispose();

                    image.Dispose();
                    File.Delete(path);
                    result = true;
                    return msg;
                } else
                {
                    throw new Exception("File doesn't exists");
                }
            } catch (Exception e) {
                result = false;
                return e.ToString();
            }
        }

        private void getDate(string path)
        {
            image = Image.FromFile(path);
            DateTime dataValue = GetDateTakenFromImage(path);
            yearPath = m_OutputFolder + "\\" + dataValue.Year.ToString();
            monthPath = yearPath + "\\" + dataValue.Month.ToString();
            thumbYearPath = m_OutputFolder + "\\" + "Thumbnails" + "\\" + dataValue.Year.ToString();
            thumbMonthPath = thumbYearPath + "\\" + dataValue.Month.ToString();
        }

        public static DateTime GetDateTakenFromImage(string path)
        {
            using (FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read))
            using (Image myImage = Image.FromStream(fs, false, false))
            {
                PropertyItem propItem = myImage.GetPropertyItem(36867);
                string dateTaken = r.Replace(Encoding.UTF8.GetString(propItem.Value), "-", 2);
                return DateTime.Parse(dateTaken);
            }
        }

        private bool HasImageExtension(string path)
        {
            return (path.EndsWith(".png") || path.EndsWith(".jpg") || path.EndsWith(".gif") || path.EndsWith(".bmp"));
        }

        private string SameName(string pathFile, string pathDir)
        {
            int counter = 0;
            string fileNamePath = pathDir + "\\" + Path.GetFileName(pathFile);
    //        if (!File.Exists(pathDir + "\\" + Path.GetFileName(pathFile)))
    //        {
     //           return fileNamePath;
    //        }
   //         else
   //         {
     //           fileNamePath = pathDir + "\\" + Path.GetFileNameWithoutExtension(pathFile) + "(" + counter.ToString() + ")" + Path.GetExtension(pathFile);
                while (File.Exists(fileNamePath))
                {
                    counter++;
                    fileNamePath = pathDir + "\\" + Path.GetFileNameWithoutExtension(pathFile) + "(" + counter.ToString() + ")" + Path.GetExtension(pathFile);
            }
            //         }
            return fileNamePath;
        }

    }
}
